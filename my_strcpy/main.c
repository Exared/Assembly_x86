#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

char *my_strcpy(char *dest, const char *source);

int main()
{
    char *s = "t";
    char *new = malloc(500* sizeof(char));
    my_strcpy(new, s);
    printf("%s", new);
    printf ("\n-----\n");
    printf("%s", s);
    printf ("1%p 2%p", s, new);
    return 0;
}
