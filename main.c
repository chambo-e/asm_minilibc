/*
** main.c for  in /home/chambo_e/epitech/asm_minilibc
1;2802;0c**
** Made by Emmanuel Chambon
** Login   <chambo_e@epitech.net>
**
** Started on  Wed Mar 11 04:06:15 2015 Emmanuel Chambon
** Last update Tue Mar 17 23:50:26 2015 Emmanuel Chambon
*/

#include <stddef.h>
#include <stdio.h>

char		*strdup(char *);
int		my_strlen(char *);
int		my_strcmp(char *, char *);
int		my_strncmp(char *, char *, int);
void		*my_memset(void *, int, size_t);
void		*my_memcpy(void *, void *, size_t);
char		*my_rindex(char *, int);
char		*my_strchr(char *, int);
char		*my_strpbrk(char *, char *);
int		my_strcspn(char *, char *);
int		my_strstr(char *, char *);

int main()
{

  /* char a = 'a'; */
  /* printf("%p\n", &a); */
  /* printf("%d\n", my_putchar(a)); */

  /*  printf("%d\n", my_putchar('a')); */
  /* printf("STRLEN:\n"); */
  /* printf("Should be 8 : %d\n", my_strlen("ASM FTW!")); */
  /* printf("Should be 0 : %d\n", my_strlen("")); */
  /* printf("Should be 12 : %d\n", my_strlen("Hello World!")); */
  /* printf("Should be 3 : %d\n", my_strlen("Hi!")); */

  /* char *toto = strdup("hello"); */
  /* printf("%s\n", (char *)my_memset(toto, 81, -10)); */


  /* char *titi = NULL; */

  /* titi = my_rindex("hello", 10); */
  /* printf("%p\n", titi); */
  /* titi = my_strchr(toto, 115); */
  /* printf("%p\n", titi); */

  /* printf("%d\n", my_strcmp("salut", "sal")); */
  /* printf("%d\n", my_strncmp("samut", "salu", 0)); */
  /* printf("%d\n", strncmp("samut", "salu", 0)); */
  char *file = strdup("     ");
  /* my_strlen(NULL); */
  printf("%d\n", my_strcspn("hello world", "o"));
  return (0);
}
