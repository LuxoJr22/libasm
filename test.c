#include "stdio.h"
#include "libasm.h"

int main(void) 
{
    int result;
    
    result = 42;
    result = add42(20);
    printf("Result is :%i\n", result);
    return 0;
}