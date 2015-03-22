[BITS 64]

	global putstr:function
	extern strlen
	section .text

putstr:
	push rbp
	mov rbp, rsp

	mov r8, rdi

	push rdi

	call strlen wrt ..plt
	mov rcx, rax
	
	mov rax, 1			; syscall
	mov rsi, r8			; char
	mov rdi, 1			; fd
	mov rdx, rcx		 	; length
	syscall

	pop rdi
	
	mov rsp, rbp
	pop rbp

	ret  
