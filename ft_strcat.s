# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:24:22 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:24:23 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_strcat

section 		.text

_ft_strcat:
			mov	rax, rdi
			cmp [rdi], byte 0
			je  cpy_src
			inc rdi
			jmp _ft_strcat

cpy_src:
			cmp [rsi], byte 0
			je 	retn
			movsb
			jmp cpy_src

retn:	
			ret