global ft_strcmp

ft_strcmp:
	push rbp
	mov rbp, rsp

	mov rdx, -1
	mov rcx, 0
	mov rax, 0
loop:
	add rdx, 1
	mov al, [rdi + rdx]
	mov cl, [rsi + rdx]
	cmp al, 0x00
	je end
	cmp al, cl 
	je loop
end:
	sub rax, rcx

	mov rsp, rbp
	pop rbp
	ret
	 