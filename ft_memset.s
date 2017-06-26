# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:24:01 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:24:02 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_memset

section			.text

_ft_memset:
		mov  rax, rsi
		cmp  rax, 0
		mov  rcx, rdx
		cld
		rep  stosb
		ret
