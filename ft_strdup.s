global ft_strdup
extern ft_strlen
extern ft_strcpy
extern malloc

ft_strdup:
	push rbp
	mov rbp, rsp

	sub r11, r11
	mov r11, rdi

	call ft_strlen
	mov rdi, rax
	inc rdi
	call malloc WRT ..plt

	mov rdi, rax
	mov rsi, r11
	call ft_strcpy
	;mov cl, 0x41
	;mov [rax], cl

end:
	mov rsp, rbp
	pop rbp
	ret
