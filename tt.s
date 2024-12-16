global	add42

add42:
	push rbp
	mov rbp, rsp

	mov rax, rdi
	add	rax, rax
	
	mov rsp, rbp
	pop rbp
	ret