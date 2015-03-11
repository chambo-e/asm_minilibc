/*
** main.c for  in /home/chambo_e/epitech/asm_minilibc
**
** Made by Emmanuel Chambon
** Login   <chambo_e@epitech.net>
**
** Started on  Wed Mar 11 04:06:15 2015 Emmanuel Chambon
** Last update Wed Mar 11 04:31:15 2015 Emmanuel Chambon
*/

#include <stddef.h>
#include <stdio.h>

size_t		strlen(char *);
char		*strdup(char *);
void		*memset(void *, int, size_t);

int main()
{

  printf("STRLEN:\n");
  printf("Should be 8 : %d\n", strlen("ASM FTW!"));
  printf("Should be 0 : %d\n", strlen(""));
  printf("Should be 12 : %d\n", strlen("Hello World!"));
  printf("Should be 3 : %d\n", strlen("Hi!"));

  char *toto = strdup("hello");
  printf("%s\n", memset(toto, 81, 10000));
}
