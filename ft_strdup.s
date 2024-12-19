global ft_strdup
extern ft_strlen
extern ft_strcpy
extern malloc

ft_strdup:
	push rbp
	mov rbp, rsp

	mov rbx, rdi
	call ft_strlen
	mov rdi, rax
	inc rdi
	call malloc WRT ..plt

	mov rdi, rax
	mov rsi, rbx
	call ft_strcpy

	mov rsp, rbp
	pop rbp
	ret
