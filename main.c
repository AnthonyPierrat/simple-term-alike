#include "line.h"
#include "prompt.h"
#include "execute.h"
#include "handler.h"

int main() {


    char* line;
    char** args[MAX_ARG_SIZE] = {NULL};
    int status;

    handlerManager();

    do {

        fflush(stdin);
        prompt();

        line = readline();

        char linecpy[strlen(line)];
        strcpy(linecpy, line);

        splitBy(line, " ", args);

        status = exec(args, linecpy);

        switch (status) {
            case EMPTY_LINE:
                break;
        }

    } while (status);


    return 0;
}