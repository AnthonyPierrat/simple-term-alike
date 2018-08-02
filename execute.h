#include <stdio.h>

#define EMPTY_LINE 50
#define MAX_OUTPUT_SIZE 8192

__pid_t f_pid;

/**
 * Execute a command
 * @param args
 * @return
 */
int exec(char** args, char* line);

/**
 * Executes a command
 * @param input fd
 * @param output fd
 * @param command char*
 * @return int error code
 */
int exec_proc(int input, int output, char** command);

/**
 * Executes a bunch of piped commands
 * @param tokens
 * @param command
 * @return
 */
int exec_command(int tokens, char ***command);

/**
 * execute a redirection
 * exemple : ls > test
 * @param args
 * @return
 */
int exec_redirection_out(char **command,char *file_out);

/**
 * execute a redirection
 * exemple : ls < test
 * @param args
 * @return
 */
int exec_redirection_in(char **command,char *file_in);


/**
 * Setting up special commands
 */
void specialCommandHandler(char** args);


/**
 * Change directory command
 */
void cd_cmd(char** args);

/**
 * Exit command
 * @param args
 */
void exit_cmd(char** args);