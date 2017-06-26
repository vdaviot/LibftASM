# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/28 18:42:27 by vdaviot           #+#    #+#              #
#    Updated: 2015/04/28 19:03:04 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

SRC = ft_bzero.s	ft_isalpha.s	ft_isdigit.s	ft_isalnum.s	\
	  ft_isascii.s	ft_isprint.s	ft_toupper.s	ft_tolower.s	\
	  ft_strlen.s	ft_memset.s		ft_memcpy.s		ft_strdup.s		\
	  ft_puts.s		ft_strcat.s		ft_cat.s		ft_isspace.s	\
	  ft_ispunct.s	ft_isupper.s	ft_islower.s

OBJ = $(SRC:.s=.o)

CS = ~/Downloads/nasm-2.11.06/nasm

CC = clang

SFLAG = -f macho64

CFLAGS = -Wall -Wextra -Werror

%.o: %.s
	$(CS) $(SFLAG) -o $@ $<

all: $(NAME)

$(NAME): $(OBJ)
			@ar rc $(NAME) $(OBJ)
			$(CC) $(CFLAGS) main.c $(NAME) -o test
			echo "compile to $(NAME) DONE !"
clean:
			@rm -f $(OBJ)
			@echo "clean of LIB_OBJ DONE !"
fclean: clean
			@rm -f $(NAME)
			@rm test	
			@echo "fclean $(NAME) DONE !"
re: fclean all

.PHONY: re clean fclean run all
