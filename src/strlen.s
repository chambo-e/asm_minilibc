[BITS 64]

	global strlen

	section .text

strlen:
	push rbp
	mov rbp, rsp

	mov rcx, 0

strlen_loop:
	cmp byte[rdi], 0
	je strlen_end
	inc rcx
	inc rdi
	jmp strlen_loop
	
strlen_end:
	mov rax, rcx

	mov rsp, rbp
	pop rbp

	ret
