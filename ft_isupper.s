# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:22:58 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:22:59 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_isupper

section			.text

_ft_isupper:
				cmp  rdi, 'A'
				jl   false
				cmp  rdi, 'Z'
				jg   false
				mov	 rax, 1
				ret
false:
				mov  rax, 0
				ret
