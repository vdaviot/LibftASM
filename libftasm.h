/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libftasm.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/04/27 16:50:31 by vdaviot           #+#    #+#             */
/*   Updated: 2015/04/28 19:08:11 by vdaviot          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */


#ifndef LIBFTASM_H
# define LIBFTASM_H

# include <stdio.h>
# include <string.h>
# include <stdlib.h>
# include <unistd.h>
# include <ctype.h>
# include <sys/types.h>
# include <sys/stat.h>
# include <fcntl.h>

# define TEST(str, fun1, fun2) printf("test for: %s\n", str); for \
(i = 0;i < 255;++i){ if (fun1(i) != fun2(i)) printf("diff for %s => i = %i: %i != %i\n",\
        str, i, fun1(i), fun2(i));}

void	ft_bzero(void *s, size_t n);
char	*ft_strcat(char *dest, const char *src);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_toupper(int c);
int		ft_tolower(int c);
int		ft_puts(const char *s);

size_t	ft_strlen(const char *s);
void	*ft_memset(void *s, int c, size_t n);
void	*ft_memcpy(void *dest, const void *src, size_t n);
char	*ft_strdup(const char *s1);
void	ft_cat(int fd);

int		ft_islower(int c);
int		ft_isupper(int c);
int		ft_ispunct(int c);
int		ft_isspace(int c);

#endif