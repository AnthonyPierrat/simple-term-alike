//
// Created by anthonypierrat on 25/11/17.
//
#include <stdio.h>
#include <signal.h>


#ifndef SHELL_HANDLER_H
#define SHELL_HANDLER_H

#endif //SHELL_HANDLER_H
extern pid_t f_pid;

void handlerManager();

void INTHandler(int sig);

void TSTPHandler(int sig);

void CONTHandler(int sig);

void ALRMHandler(int sig);