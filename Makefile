SRCS	=	ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

OBJS	=	${SRCS:.s=.o}

NAME = libasm.a

ASM	= nasm
RM	= rm -f
AR	= ar rc
GCC = gcc -m64

FLAGS 	= -f elf64

.s.o:
		${ASM} ${FLAGS} $< -o ${<:.s=.o}

${NAME}:	${OBJS}
			${AR} ${NAME} ${OBJS}



all:		${NAME}

clean:		
	${RM} ${OBJS}

fclean:	clean
	${RM} ${NAME}

re:		fclean all

.PHONY: all clean fclean re
