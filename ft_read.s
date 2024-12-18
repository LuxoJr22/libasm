global ft_read

ft_read:
	push rbp
	mov rbp, rsp

	mov rax, 0
	syscall

	mov rsp, rbp
	pop rbp
	ret


	 