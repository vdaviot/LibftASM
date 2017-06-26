# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:22:09 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:22:10 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global		_ft_isalpha

section		.text

_ft_isalpha:
				cmp  rdi,'A'
				jl	 false
				cmp  rdi,'z'
				jg   false
				cmp  rdi,'Z'
				jle   true
				cmp  rdi, 'a'
				jge	 true

false:
				mov rax, 0
				ret

true:
				mov rax, 1
				ret
