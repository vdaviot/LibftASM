# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_islower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:22:48 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:22:49 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_islower

section			.text

_ft_islower:
				cmp  rdi, 'a'
				jl   false
				cmp  rdi, 'z'
				jg   false
				jmp  true

true:
				mov  rax, 1
				ret
false:
				mov  rax, 0
				ret
