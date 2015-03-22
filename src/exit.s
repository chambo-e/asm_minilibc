[BITS 64]

	global exit:function
	section .text

exit:
	push rbp
	mov rbp, rsp

	mov rax, 60			; syscall
	mov rdi, rdi
	syscall
