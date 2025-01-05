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
	cmp rax, 0
	je err
	mov rdi, rax
	mov rsi, rbx
	call ft_strcpy

	mov rsp, rbp
	pop rbp
	ret
err:
	mov rsp, rbp
	pop rbp
	ret