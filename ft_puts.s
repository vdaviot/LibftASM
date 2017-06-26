# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:24:10 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:24:12 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_puts

extern _ft_strlen

section .data

null:
	db "(null)", 0xA
nl:
	db 0xA
	
section .text

_ft_puts:
	cmp rdi, 0
	je nulll
	lea	rsi, [rdi]
	call _ft_strlen
	mov	rdx, rax
	mov rdi, 1
	mov rax, 0x2000004
	syscall

	mov rdi, 1
	lea rsi, [rel nl]
	mov rdx, 1
	mov rax, 0x2000004
	syscall
	ret

nulll:
	mov rdi, 1
	lea rsi, [rel null]
	mov rdx, 7
	mov rax, 0x2000004
	syscall
	ret
