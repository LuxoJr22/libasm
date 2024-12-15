global ft_strlen

ft_strlen:
    push rbp
    mov rbp, rsp
    mov rax, [rbp + 8]
    add rax, 42
    mov rsp, rbp
    pop rbp
    ret