[BITS 64]

	global putchar:function
	section .text

putchar:
	push rbp
	mov rbp, rsp

	mov [r8], rdi
	
	mov rax, 1		; syscall
	mov rsi, r8		; char
	mov rdi, 1		; fd
	mov rdx, 1 		; length
	syscall

	mov r9, 0
	
	mov [r8], r9 

	mov rsp, rbp
	pop rbp

	ret  
