global main

section .data
	msg db "Testing %i...", 0x0a, 0x00

main:
	push rbp
	mov rbp, rsp

	;push 123
	;push msg
	;call printf
	mov eax, 0

	leave
	ret
