# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:25:26 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:25:28 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global				_ft_toupper

extern				_ft_isalpha
extern				_ft_islower

section				.text

_ft_toupper:
					call  _ft_isalpha
					cmp   rax, 1
					jne   false
					call  _ft_islower
					cmp   rax, 1
					jne   false
					sub   rdi, 32
					jmp   true

false:
			mov  rax, rdi
			ret

true:
			mov  rax, rdi
			ret
