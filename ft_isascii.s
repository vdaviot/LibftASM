# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:22:20 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:22:22 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_isascii

section         .text

_ft_isascii:
				cmp  rdi, 0
				jl   false
				cmp  rdi, 127
				jg   false
				jmp  true
				
true:
				mov  rax, 1
				ret
false:
				mov  rax, 0
				ret
