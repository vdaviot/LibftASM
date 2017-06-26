# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:25:17 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:25:18 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global					_ft_tolower

extern					_ft_isalpha
extern					_ft_isupper

section					.text

_ft_tolower:
						call  _ft_isalpha
						cmp   rax, 1
						jne   false
						call  _ft_isupper
						cmp   rax, 1
						jne   false
						add   rdi, 32
						jmp   true

false:
						mov  rax, rdi
						ret

true:
						mov  rax, rdi
						ret
