global ft_strcpy

ft_strcpy:
	push rbp
	mov rbp, rsp

	mov rdx, -1
	mov rax, 0
loop:
	add rdx, 1
	mov al, [rsi + rdx]
	mov [rdi + rdx], al
	cmp al, 0x00
	jne loop
	mov rax, rdi

	mov rsp, rbp
	pop rbp
	ret


	 