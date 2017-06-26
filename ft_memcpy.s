# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vdaviot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/14 14:23:55 by vdaviot           #+#    #+#              #
#    Updated: 2015/05/14 14:23:56 by vdaviot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_memcpy

section 		.text

_ft_memcpy:
		cmp  rdx, 0
		je 	 end
		mov rcx, rdx
		repne movsb
		ret
end:
		mov rax, rdi
		ret	
