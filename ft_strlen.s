global ft_strlen

ft_strlen:
	push rbp
	mov rbp, rsp
    
    
    sub rcx, rcx
    sub al, al
    not rcx
    cld
    repne scasb
    not rcx
    dec rcx
    mov rax, rcx

	mov rsp, rbp
	pop rbp
	ret
