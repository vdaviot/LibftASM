# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:22:41 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:22:42 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_isdigit

section			.text

_ft_isdigit:
				cmp  rdi, 48
				jl   false
				cmp  rdi, 57
				jg   false
				jmp  true

false:
				mov  rax, 0
				ret

true:
				mov  rax, 1
				ret	
