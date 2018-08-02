#include "execute.h"
#include "line.h"
#include "handler.h"
#include <zconf.h>
#include <stdlib.h>
#include <wait.h>
#include <string.h>
#include <fcntl.h>
#include <errno.h>

/**
 * Executes a command
 * @param input fd
 * @param output fd
 * @param command char*
 * @return int error code
 */
int exec_proc(int input, int output, char** command) {

    pid_t runner;

    runner = fork();
    f_pid = runner;

    if (runner == 0) {

        // Use input for stdin
        if (input != 0) {
            dup2(input, 0);
            close(input);
        }

        // Use output for stdout
        if (output != 1) {
            dup2(output, 1);
            close(output);
        }
        // Return command code
        execvp(command[0], command);
    }else{
        while (waitpid(-1, NULL, 0)) {
            if (errno == ECHILD) {
                break;
            }
        }
    }

    // An error occured
    return -1;
}

/**
 * Executes a bunch of piped commands
 * @param tokens
 * @param command
 * @return
 */
int exec_command(int tokens, char ***command) {
    // Used to toggle between input and output
    int input, fd[2], i;

    input = STDIN_FILENO;

    // Let's run our commands
    for (i = 0; i < tokens; i++) {
        pipe(fd);
        exec_proc(input, fd[1], command[i]);
        close(fd[1]);
        input = fd[0];
    }

    if (input != STDIN_FILENO)
        dup2(input, STDIN_FILENO);

    fflush(stdin);

    // Return code
    return execvp(command[i][0], command[i]);

}

/**
 * do redirection out >
 */
int exec_redirection_out(char **command, char *file_out)
{
    int flow = open(file_out, O_WRONLY | O_TRUNC | O_CREAT, S_IRUSR | S_IRGRP | S_IWGRP | S_IWUSR);
    pid_t pid;

    pid = fork();

    if(pid == 0)
    {
        dup2(flow, STDOUT_FILENO);
        close(flow);
        execvp(command[0],command);
    }

    return -1;
}

/**
 * do redirection in <
 * @param command
 * @param file_in
 * @return
 */
int exec_redirection_in(char **command,char *file_in)
{
    int flow = open(file_in, O_RDONLY);
    pid_t pid;

    pid = fork();

    if(pid == 0)
    {
        dup2(flow, STDIN_FILENO);
        close(flow);
        execvp(command[0],command);
    }

    return -1;
}

/**
 * Setting up special commands
 */
void specialCommandHandler(char** args) {
    cd_cmd(args);
    exit_cmd(args);
}

/**
 * Change directory command
 */
void cd_cmd(char** args) {
    if (args[0] != NULL && strcmp(args[0], "cd") == 0) {
        chdir(args[1]);
    }
}

/**
 * Exit command
 * @param args
 */
void exit_cmd(char** args) {
    if (args[0] != NULL && strcmp(args[0], "exit") == 0) {
        exit(EXIT_SUCCESS);
    }
}

/**
 * Execute a command
 * @param args
 * @return
 */
int exec(char** args, char* line) {

    specialCommandHandler(args);

    char *commands[MAX_ARG_SIZE] = {NULL};
    int status;
    char **split;
    char *file_out;
    char *file_in;

    if (args[0] == NULL) {
        return EXIT_FAILURE;
    }

    //Pipes
    if (strstr(line, "|") != NULL) {

        // Split tokens
        char **all_tokens[MAX_ARG_SIZE];
        int iterator = 0;
        all_tokens[0] = args;


        // Make a new cell with each pipe
        while ((split = trouve_tube(all_tokens[iterator], "|")) != NULL) {
            all_tokens[++iterator] = split;
        }

        pid_t runner = fork();

        if (runner == 0) {
            exit(exec_command(iterator, all_tokens));
        }
        else {
            if (waitpid(runner, &status, WUNTRACED) < 0) {
                perror("waitpid() failed\n");
            }
        }

    //&&
    }else if (strstr(line, "&&") != NULL) {
        splitBy(line, "&&", commands);
        for (int i = 0; i < nb(commands); i++) {
            splitBy(commands[i], " ", args);
            exec_proc(STDIN_FILENO, STDOUT_FILENO, args);
        }

    //>
    }else if(strstr(line,">") != NULL) {
        splitBy(line, " ", commands);
        file_out = trouve_redirection(commands, ">");
        exec_redirection_out(commands, file_out);
        wait(NULL);

    //<
    }else if(strstr(line,"<") != NULL) {
        splitBy(line, " ", commands);
        file_in = trouve_redirection(commands, "<");
        exec_redirection_in(commands, file_in);
        wait(NULL);

    //Standard command
    } else {

        exec_proc(STDIN_FILENO, STDOUT_FILENO, args);
        wait(NULL);
    }


    return 1;

}