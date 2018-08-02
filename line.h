#include <zconf.h>
#include <stdio.h>
#include <string.h>
#include <malloc.h>
#include <stdlib.h>

#define MAX_LINE_SIZE 2048
#define MAX_ARG_SIZE 128
#define TOKEN_DELIMITER " "



/**
 * read a line
 * @return
 */
char* readline();

/**
 * Split a command into an array of arguments
 * @param line
 * @return
 */
int splitBy(char* line,char* delimiter, char** tokens);

/**
 * Computes the size of an array of strings
 * @param array
 * @return
 */
int computeSize(char** array);

/**
 * Counts the not null elements of an array
 * @param array
 * @return
 */
int nb(char** array);

/**
 * The replace function
 *
 * Searches all of the occurrences using recursion
 * and replaces with the given string
 * @param char * o_string The original string
 * @param char * s_string The string to search for
 * @param char * r_string The replace string
 * @return void The o_string passed is modified
 */
void replace(char * o_string, char * s_string, char * r_string);

/**
 * Concatenates two strings
 * @param s1
 * @param s2
 * @return
 */
char* concat(const char *s1, const char *s2);

char** trouve_tube(char **tokens, const char* tube);

char* trouve_redirection(char **tokens, const char* redirection);
