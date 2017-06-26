# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:22:01 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:22:02 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global		_ft_isalnum

extern		_ft_isalpha
extern		_ft_isdigit

section		.text

_ft_isalnum:
				call  _ft_isalpha
				cmp   rax, 1
				je    true
				call  _ft_isdigit
				cmp   rax, 1
				je    true

false:
		mov  rax, 0
		ret
true:
		mov  rax, 1
		ret
