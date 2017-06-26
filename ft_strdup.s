# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:24:30 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:24:31 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global		_ft_strdup

section		.text

extern  _ft_strlen
extern	_ft_memcpy
extern	_malloc

_ft_strdup:
		push rbp
		lea	  rbp, [rsp]
		cmp  rdi, 0
		je   false
		lea  r14, [rdi]
		call _ft_strlen
		lea	 r15, [rax]
		lea  rdi, [rax]
		inc  rdi
		call _malloc
		cmp  rax, 0
		je   false
		lea  rdi, [rax]
		lea  rsi, [r14]	
		lea	 rdx, [r15]
		call _ft_memcpy
		mov	 [rax + r15], byte 0
		leave
		ret

false:
		mov rax, 0
		leave
		ret
