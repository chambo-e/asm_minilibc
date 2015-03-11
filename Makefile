##
## Makefile for  in /home/chambo_e/epitech/asm_minilibc
## 
## Made by Emmanuel Chambon
## Login   <chambo_e@epitech.net>
## 
## Started on  Wed Mar 11 03:25:48 2015 Emmanuel Chambon
## Last update Wed Mar 11 04:03:23 2015 Emmanuel Chambon
##

ASM		=	nasm

CC		=	gcc

CFLAGS		=	-shared

SRC_DIR		=	src

SRC 		=	$(SRC_DIR)/rindex.s	\
			$(SRC_DIR)/strlen.s

OBJ		=	$(SRC:.s=.o)

ASMFLAGS	=	-f elf64

NAME		=	libasm.so

%.o:			%.s
			${ASM} $< ${ASMFLAGS} -o $@

${NAME}:		$(OBJ)
			$(CC) $(CFLAGS) -o $(NAME) $(OBJ)

all:			${NAME}

clean:
			rm -f $(OBJ)

fclean:			clean
			rm -f $(NAME)

re:			fclean ${NAME}
