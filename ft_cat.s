# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_cat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:21:47 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:21:50 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_cat

extern			_ft_strlen

section			.text

_ft_cat:
		cmp		rdi, 0
		jl		end
		mov		r8, rdi

read_fd:
		mov		rdi, r8
		lea		rsi, [rel  buffer]
		mov		rdx, 0xf000
		mov		rax, 0x2000003
		syscall
		jc		end
		cmp		rax, 0
		jle		end
		mov		r10, rax
		cmp		rsi, 0
		je		end
		lea		rdi, [rsi]
		mov		rdi, 1
		mov		rdx, r10
		mov		rax, 0x2000004
		syscall
		cmp		r10, 0
		jne		read_fd

end:
		ret

section			.data

size	equ		0xF0000

section			.bss

buffer	resb	size

