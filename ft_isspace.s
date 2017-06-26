# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isspace.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:23:37 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:23:39 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_isspace

section			.text

_ft_isspace:
				cmp  rdi, 32
				je   true
				cmp  rdi, 9
				jl   false
				cmp  rdi, 13
				jg   false
				jmp  true

true:
				mov  rax, 1
				ret
false:
				mov  rax, 0
				ret
