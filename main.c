/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/04/28 19:04:21 by vdaviot           #+#    #+#             */
/*   Updated: 2015/04/28 19:05:00 by vdaviot          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftasm.h"

int			main(int ac, char **av)
{
	int		i;
	size_t	k;
	size_t  f;
	char	buf[0xf0] = {0};
	char	*s1;
	int		fd;

	(void)ac;
	ft_puts("<**>============ TEST ALL FT_IS FUNCTION ============<**>\n");
	TEST("ft_isalpha", ft_isalpha, isalpha);
	TEST("ft_isalnum", ft_isalnum, isalnum);
	TEST("ft_isascii", ft_isascii, isascii);
	TEST("ft_isdigit", ft_isdigit, isdigit);
	TEST("ft_islower", ft_islower, islower);
	TEST("ft_isupper", ft_isupper, isupper);
	TEST("ft_isprint", ft_isprint, isprint);
	TEST("ft_toupper", ft_toupper, toupper);
	TEST("ft_tolower", ft_tolower, tolower);
	TEST("ft_ispunct", ft_ispunct, ispunct);
	TEST("ft_isspace", ft_isspace, isspace);
	ft_puts("");
	if (ac >= 2)
	{
		ft_puts("<**>============ TEST FT_BZERO ============<**>\n");
		ft_puts("Avant Bzero: ");
		s1 = ft_strdup(av[1]);
		ft_puts(s1);
		ft_bzero(s1, ft_strlen(av[1]));
		ft_puts("Apres Bzero: ");
		ft_puts(s1);
		ft_puts("\n<**>============ TEST FT_STRLEN ============<**>\n");
		f = strlen(av[1]);
		k = ft_strlen(av[1]);
		printf("ft_strlen = %zu | strlen = %zu\n", k, f);
		ft_puts("");
		ft_puts("<**>============ TEST FT_PUTS ============<**>\n");
		ft_puts(av[1]);
		ft_puts(NULL);
		ft_puts("");
		if (ac >= 3)
		{
			ft_puts("<**>============ TEST FT_STRCAT ============<**>\n");
			printf("%s", ft_strcat(buf, ""));
			printf("%s", ft_strcat(buf, "Bon"));
			printf("%s", ft_strcat(buf, "j"));
			printf("%s", ft_strcat(buf, "our."));
			printf("%s\n", ft_strcat(buf, ""));
			ft_puts("");
			ft_puts("<**>============ TEST FT_STRDUP/FT_MEMCPY ============<**>\n");
			s1 = ft_strdup(av[1]);
			ft_puts(s1);
			ft_puts("\n<**>============ TEST FT_MEMSET ============<**>\n");
			ft_puts(s1);
			ft_memset(s1, 'Y', 4);
			ft_puts(s1);
			ft_puts("");
		}
		ft_puts("<**>============ TEST FT_CAT ============<**>\n");
		ft_puts("Fichier test:\n");
		fd = open("libftasm.h", O_RDONLY);
		ft_cat(fd);
		ft_puts("\nFichier binaire:\n");
		fd = open(av[0], O_RDONLY);
		ft_cat(fd);
	}
	return (0);
}
