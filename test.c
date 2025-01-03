#include <stdlib.h>
#include <stdio.h>
#include "libasm.h"

int main(void) 
{
    int result;
    char *str;
    
    str = ft_strdup("GG\0");

    printf("Result is : %s\n", str);
    free(str);
    return 0;
}