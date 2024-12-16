global ft_strlen

ft_strlen:
	push rbp
	mov rbp, rsp

	;mov rdi, [rbp + 4]
	;add rdi, 42

	mov rsp, rbp
	pop rbp
	ret