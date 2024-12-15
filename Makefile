SRCS	=	ft_strlen.s

OBJS	=	${SRCS:.c=.o}

NAME = libft.a

ASM	= nasm
RM	= rm -f
AR	= ar rc
INCLUDES	= -Iincludes

CFLAGS 	= -f elf64

.c.o:
		${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}:	${OBJS}
			${AR} ${NAME} ${OBJS}

bonus:		${OBJS_BNS}
			${AR} ${NAME} ${OBJS_BNS}

all:		${NAME}

clean:		
	${RM} ${OBJS} ${OBJS_BNS}

fclean:	clean
	${RM} ${NAME}

re:		fclean all

.PHONY: all clean fclean re
