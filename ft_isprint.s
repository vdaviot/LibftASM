# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:23:13 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:23:14 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global				_ft_isprint

section				.text

_ft_isprint:
				cmp  rdi, 32
				jl   false
				cmp  rdi, 126
				jg   false
				jmp  true

true:
				mov  rax, 1
				ret

false:
				mov  rax, 0
				ret
