[BITS 64]
	global my_strpbrk:function

	section .text
	
my_strpbrk:
	push rbp
	mov rbp, rsp

	mov rax, 0
	jmp strpbrk_loop
	
strpbrk_start:
	inc rdi
	
strpbrk_loop:
	cmp byte[rdi], 0
	je strpbrk_end

	mov r8, rsi
	jmp strpbrk_find
	
strpbrk_start_find:
	inc r8
	
strpbrk_find:
	mov r9b, byte[rdi]
	mov r10b, byte[r8]

	cmp r9b, r10b
	je strpbrk_found

	cmp r10b, 0
	je strpbrk_start
	
	cmp r9b, r10b
	jne strpbrk_start_find
	
strpbrk_found:
	mov rax, rdi

strpbrk_end:
	mov rsp, rbp
	pop rbp

	ret
	
