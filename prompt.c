#include "prompt.h"
#include "line.h"

/**
 * Handle the prompt display
 */
void prompt() {

    char hostname[MAX_HOSTNAME_SIZE];
    char cwd[MAX_HOSTNAME_SIZE];
    char* user = getenv("USER");
    gethostname(hostname, MAX_HOSTNAME_SIZE);
    getcwd(cwd, sizeof(cwd));
    char* home = concat("/home/", user);
    replace(cwd, home, "~");
    printf("%s%s@%s%s:%s%s%s$ ", KBLU, user, hostname, KWHT, KGRN, cwd, KWHT);
}