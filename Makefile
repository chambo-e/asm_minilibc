##
## Makefile for  in /home/chambo_e/epitech/asm_minilibc
## 
## Made by Emmanuel Chambon
## Login   <chambo_e@epitech.net>
## 
## Started on  Wed Mar 11 03:25:48 2015 Emmanuel Chambon
## Last update Wed Mar 11 04:29:52 2015 Emmanuel Chambon
##

ASM		=	nasm

CC		=	gcc

CFLAGS		=	-shared

SRC_DIR		=	src

SRC 		=	$(SRC_DIR)/rindex.s	\
			$(SRC_DIR)/strlen.s	\
			$(SRC_DIR)/memset.s

OBJ		=	$(SRC:.s=.o)

ASMFLAGS	=	-f elf64

NAME		=	libasm.so

TEST_NAME	=	test

%.o:			%.s
			${ASM} $< ${ASMFLAGS} -o $@

${NAME}		:	$(OBJ)
			$(CC) $(CFLAGS) -o $(NAME) $(OBJ)

test		:	$(OBJ)
			$(CC) main.c $(OBJ) -o $(TEST_NAME)

all		:	${NAME}

clean		:
			rm -f $(OBJ)

fclean		:	clean
			rm -f $(NAME)
			rm -f $(TEST_NAME)

re		:	fclean ${NAME}
