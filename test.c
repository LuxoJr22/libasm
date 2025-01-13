#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include "libasm.h"

int    ft_nbrlen(long nbr)
{
    int    len;

    len = 1;
    if (nbr < 0)
    {
        ++len;
        nbr = -nbr;
    }
    while (nbr > 9)
    {
        ++len;
        nbr /= 10;
    }
    return (len);
}

char    *ft_itoa(int n)
{
    int        len;
    char    *nbr;
    long    ln;

    len = ft_nbrlen(n);
    nbr = malloc(sizeof(char) * (len + 1));
    if (!nbr)
        return (NULL);
    ln = (long)n;
    nbr[len--] = '\0';
    if (ln < 0)
    {
        nbr[0] = '-';
        ln = -ln;
    }
    while (ln > 9)
    {
        nbr[len--] = (ln % 10) + 48;
        ln /= 10;
    }
    nbr[len] = ln + 48;
    return (nbr);
}

int main(void) 
{
    int result;
    char *str = "Bonjour cv";
    char *ft_dest = malloc(sizeof(6));
    char *dest = malloc(sizeof(6));
    char ft_rd[10];
    char rd[10];

    ft_write(1, "FT_STRLEN\n",11);
    write(1, ft_itoa(ft_strlen(str)), ft_strlen(ft_itoa(ft_strlen(str))));

    write(1, "\nSTRLEN\n",9);
    write(1, ft_itoa(strlen(str)), strlen(ft_itoa(strlen(str))));



    ft_write(1, "\n\nFT_STRCPY\n",13);
    ft_strcpy(ft_dest, str);
    ft_write(1, ft_dest, ft_strlen(ft_dest));

    write(1, "\nSTRCPY\n",9);
    strcpy(dest, str);
    write(1, dest, strlen(dest));



    ft_write(1, "\n\nFT_READ\n",10);
    ft_read(0, ft_rd, 10);
    ft_write(1, ft_rd, ft_strlen(ft_rd));

    write(1, "\nREAD\n",6);
    read(0, rd, 10);
    write(1, rd, strlen(rd));


    ft_write(1, "\n\nFT_STRCMP\n",13);
    ft_write(1, ft_itoa(ft_strcmp(ft_dest, ft_rd)), ft_strlen(ft_itoa(ft_strcmp(ft_dest, ft_rd))));

    write(1, "\nSTRCMP\n",9);
    write(1, ft_itoa(strcmp(dest, rd)), strlen(ft_itoa(strcmp(dest, rd))));



    ft_write(1, "\n\nFT_STRDUP\n",12);
    char *ft_s = ft_strdup(str);
    ft_write(1, ft_s, ft_strlen(ft_s));
    
    write(1, "\nSTRDUP\n",9);
    char *s = strdup(str);
    write(1, s, strlen(s));

    return 0;
}
