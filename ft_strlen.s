# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:25:01 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:25:04 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global				_ft_strlen

section				.text

_ft_strlen:
					cmp  rsi, 0
					jz   false
					sub  rcx, rcx
					sub  al, al
					not  rcx
					cld
					repne  scasb
					not  rcx
					dec  rcx
					jmp  true
false:
					mov  rax, 0
					ret

true:
					mov  rax, rcx
					ret 
