# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_ispunct.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:23:24 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:23:26 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global				_ft_ispunct

section				.text

_ft_ispunct:
					cmp  rdi, ','
					je   true
					cmp  rdi, '.'
					je   true
					cmp  rdi, ':'
					je   true
					cmp  rdi, ';' 
					je   true
					cmp  rdi, '?'
					je   true
					cmp  rdi, '!'
					je   true
					cmp  rdi, '"'
					je   true
					cmp  rdi, '#'
					je   true
					cmp  rdi, '$'
					je   true
					cmp  rdi, '%'
					je   true
					cmp  rdi, '&'
					je   true
					cmp  rdi, '('
					je   true
					cmp  rdi, ')'
					je   true
					cmp  rdi, '*'
					je   true
					cmp  rdi, '+'
					je   true
					cmp  rdi, '-'
					je   true
					cmp  rdi, '/'
					je   true
					cmp  rdi, '{'
					je   true
					cmp  rdi, '|'
					je   true
					cmp  rdi, '}'
					je   true
					cmp  rdi, '~'
					je   true
					cmp  rdi, '['
					je   true
					cmp  rdi, ']'
					je   true
					cmp  rdi, 92
					je   true
					cmp  rdi, 39
					je   true
					cmp  rdi, '^'
					je   true
					cmp  rdi, '_'
					je   true
					cmp  rdi, '`'
					je   true
					cmp  rdi, '<'
					je   true
					cmp  rdi, '='
					je   true
					cmp  rdi, '>'
					je   true
					cmp  rdi, '@'
					je   true

false:
					mov  rax, 0
					ret

true:
					mov  rax, 1
					ret
