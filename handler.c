//
// Created by anthonypierrat on 25/11/17.
//

#include <ctype.h>
#include <stdlib.h>
#include <zconf.h>
#include <wait.h>
#include "handler.h"

/**
 * Handles every handler !
 */
void handlerManager()
{
    signal(SIGINT,INTHandler);
    signal(SIGTSTP,TSTPHandler);
    signal(SIGCONT,CONTHandler);
}

/**
 * Handler for CTRL-C
 * @param sig
 */
void INTHandler(int sig) {

    printf("\nDo you really want to quit ? [y/n] \n");
    int answer = getchar();

    if (toupper(answer) == 'Y')
        kill(f_pid, SIGINT);
}

/**
 * Handler for CTRL-Z (processus sleep)
 * @param sig
 */
void TSTPHandler(int sig)
{
    printf("\nGoing to sleep! \n");
    printf("%d", f_pid);
    if(f_pid != 0)
        kill(f_pid,SIGTSTP);
}

/**
 * Handler to reset a processus
 * @param sig
 */
void CONTHandler(int sig)
{
    printf("\nHey i'm awake\n");
    kill(f_pid,SIGCONT);
}
