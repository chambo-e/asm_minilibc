[BITS 64]
	global memmove:function
	section .text

memmove:
	push rbp
	mov rbp, rsp

	mov rax, rdi
	mov rcx, rdx
	sub rcx, 1
	mov r9, -1
	mov r10, -1

	cmp rdi, rsi
	jg memmove_loop

	mov rcx, 0
	mov r9, 1
	mov r10, rdx

memmove_loop:
	cmp rcx, r10
	jz memmove_end

	mov r8b, [rsi + rcx]
	mov [rdi + rcx], r8b
	add rcx, r9 

	jmp memmove_loop

memmove_end:
	mov rsp, rbp
	pop rbp

	ret
