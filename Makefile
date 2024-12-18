SRCS	=	ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

OBJS	=	${SRCS:.s=.o}

NAME = test

ASM	= nasm
RM	= rm -f
AR	= ar rc
GCC = gcc -m64

FLAGS 	= -f elf64

.s.o:
		${ASM} ${FLAGS} $< -o ${<:.s=.o}

${NAME}:	${OBJS}
			${GCC} ${OBJS} test.c -o ${NAME}
# ${NAME}:	${OBJS_S}
# 			${AR} ${NAME} ${OBJS_S}

bonus:		${OBJS_BNS}
			${AR} ${NAME} ${OBJS_BNS}

all:		${NAME}

clean:		
	${RM} ${OBJS} ${OBJS_BNS}

fclean:	clean
	${RM} ${NAME}

re:		fclean all

.PHONY: all clean fclean re
