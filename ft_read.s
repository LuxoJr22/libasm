global ft_read
extern __errno_location

ft_read:
	push rbp
	mov rbp, rsp

	mov rax, 0
	syscall
	cmp rax, 0
	jl err
	mov rsp, rbp
	pop rbp
	ret
err:
	neg rax
	mov rdi, rax
	call __errno_location WRT ..plt
	mov [rax], rdi
	mov rax, -1

	mov rsp, rbp
	pop rbp
	ret


	 