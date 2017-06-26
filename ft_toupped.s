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