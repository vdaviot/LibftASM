# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:21:38 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:21:41 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global		_ft_bzero

section		.text

_ft_bzero:
				cmp rsi, 0
				je null
				dec rsi
				mov [rdi], byte 0
				inc	rdi
				cmp rsi, 0
				jne _ft_bzero

null:
				ret
