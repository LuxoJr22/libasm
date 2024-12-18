#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "libasm.h"

int main(void) 
{
    int result;
    char *str;
    
    str = ft_strdup("vodjyu\0");
    //free(str);
    //str[0] = 'a';
    //str[1] = '\0';
    // str[2] = 'm';
    // str[3] = '\0';

    printf("Result is : %s\n", str);
    free(str);
    return 0;
}