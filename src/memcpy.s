[BITS 64]

	global memcpy:function
	section .text

memcpy:
	push rbp
	mov rbp, rsp

	mov rcx, 0
	mov rax, rdi
	
memcpy_loop:
	cmp rdi, rsi
	je memcpy_end

	cmp rcx, rdx
	jge memcpy_end
	
	mov r8b, [rsi]
	mov [rdi], r8b

	inc rdi
	inc rsi
	inc rcx

	jmp memcpy_loop
	
memcpy_end:
	mov rsp, rbp
	pop rbp

	ret
