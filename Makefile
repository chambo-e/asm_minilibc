##
## Makefile for  in /home/chambo_e/epitech/asm_minilibc
## 
## Made by Emmanuel Chambon
## Login   <chambo_e@epitech.net>
## 
## Started on  Wed Mar 11 03:25:48 2015 Emmanuel Chambon
## Last update Sun Mar 22 07:20:41 2015 Emmanuel Chambon
##

ASM		=	nasm

CC		=	gcc

CFLAGS		=	-W -Wall -Wextra

LDFLAGS		=	-shared

SRC_DIR		=	src

SRC 		=	$(SRC_DIR)/rindex.s	\
			$(SRC_DIR)/strlen.s	\
			$(SRC_DIR)/strchr.s	\
			$(SRC_DIR)/strpbrk.s	\
			$(SRC_DIR)/strcspn.s	\
			$(SRC_DIR)/strcmp.s	\
			$(SRC_DIR)/strstr.s	\
			$(SRC_DIR)/strncmp.s	\
			$(SRC_DIR)/strcasecmp.s	\
			$(SRC_DIR)/memset.s	\
			$(SRC_DIR)/memmove.s	\
			$(SRC_DIR)/putchar.s	\
			$(SRC_DIR)/putstr.s	\
			$(SRC_DIR)/exit.s	\
			$(SRC_DIR)/memcpy.s

OBJ		=	$(SRC:.s=.o)

ASMFLAGS	=	-f elf64

NAME		=	libasm.so

%.o:			%.s
			${ASM} $< ${ASMFLAGS} -o $@

${NAME}		:	$(OBJ)
			$(CC) $(LDFLAGS) -o $(NAME) $(OBJ)

all		:	${NAME}

clean		:
			rm -f $(OBJ)

fclean		:	clean
			rm -f $(NAME)

re		:	fclean ${NAME}
