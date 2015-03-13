[BITS 64]
	global my_putchar:function

	section .text

my_putchar:
	push rbp
	mov rbp, rsp

	push rdi
	
	mov rax, 1		; syscall
	mov rdi, 1		; fd
	mov rsi, [rsp + 16]		; char
	mov rdx, 1 		; length
	syscall

end:
	mov al, byte[rbp + 8]

	mov rsp, rbp
	pop rbp

	ret  
