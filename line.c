#include "line.h"

/**
 * read a line
 * @return
 */
char* readline() {
    char * line = malloc(100), * linep = line;
    size_t lenmax = 100, len = lenmax;
    int c;

    if(line == NULL)
        return NULL;

    for(;;) {
        c = fgetc(stdin);
        if(c == EOF)
            break;

        if(--len == 0) {
            len = lenmax;
            char * linen = realloc(linep, lenmax *= 2);

            if(linen == NULL) {
                free(linep);
                return NULL;
            }
            line = linen + (line - linep);
            linep = linen;
        }

        if((*line++ = c) == '\n')
            break;
    }
    *line = '\0';
    return linep;
}

/**
 * Split a command into an array of arguments
 * @param line
 * @return
 */
int splitBy(char* line,char* delimiter, char** tokens) {


    int nb_token=0;

    if (MAX_ARG_SIZE <= 0) {
        return -1;
    }

    tokens[nb_token++]=strtok(line, concat(delimiter, "\n"));
    if (tokens[0] == NULL) {
        return 0;
    }

    while (nb_token < MAX_ARG_SIZE) {
        char*token=strtok(NULL, concat(delimiter, "\n"));
        if (token==NULL) {
            break;
        }
        if (strcmp(token, delimiter) != 0) {
            tokens[nb_token++]=token;
        }
    }

    tokens[nb_token]=NULL;
    return nb_token;
}


/**
 * Computes the size of an array of strings
 * @param array
 * @return
 */
int computeSize(char** array) {

    int res = 0;

    int length = strlen(array) - 2;

    for (int i = 0; i < length; i++) {
        res += strlen(array[i]);
    }

    return res;
}

/**
 * Counts the not null elements of an array
 * @param array
 * @return
 */
int nb(char** array) {
    int i = 0;
    while (array[i++ + 1] != NULL) {}
    return i;
}

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
void replace(char * o_string, char * s_string, char * r_string) {
    //a buffer variable to do all replace things
    char buffer[MAX_LINE_SIZE];
    //to store the pointer returned from strstr
    char * ch;

    //first exit condition
    if(!(ch = strstr(o_string, s_string)))
        return;

    //copy all the content to buffer before the first occurrence of the search string
    strncpy(buffer, o_string, ch-o_string);

    //prepare the buffer for appending by adding a null to the end of it
    buffer[ch-o_string] = 0;

    //append using sprintf function
    sprintf(buffer+(ch - o_string), "%s%s", r_string, ch + strlen(s_string));

    //empty o_string for copying
    o_string[0] = 0;
    strcpy(o_string, buffer);
    //pass recursively to replace other occurrences
    return replace(o_string, s_string, r_string);
}

/**
 * Concatenates two strings
 * @param s1
 * @param s2
 * @return
 */
char* concat(const char *s1, const char *s2)
{
    char *result = malloc(strlen(s1)+strlen(s2)+1);//+1 for the null-terminator
    //in real code you would check for errors in malloc here
    strcpy(result, s1);
    strcat(result, s2);
    return result;
}


char** trouve_tube(char **tokens, const char* tube)
{
    while(tokens[0] != NULL) {
        if (strcmp(tokens[0], tube)==0) {
            tokens[0]=NULL;
            return tokens+1;
            // équivalent à :
            // return &tokens[1];
        }
        tokens++;
    }
    /* Rien trouvé */
    return NULL;
}

char* trouve_redirection(char **tokens, const char* redirection)
{
    char* file;

    while(tokens[0] != NULL) {
        if (strcmp(tokens[0], redirection)==0) {
            file=tokens[1];
            if (file==NULL) {
                /* Un signe de redirection, mais pas
                 * de fichier après : on efface juste
                 * le signe de redirection */
                tokens[0]=NULL;
                return NULL;
            }
            /* On décale les arguments suivant la redirection */
            while (tokens[2]!=NULL) {
                tokens[0]=tokens[2];
            }
            tokens[0]=NULL;
            return file;
        }
        tokens++;
    }
    /* Rien trouvé */
    return NULL;
}
