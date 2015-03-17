[BITS 64]
	
	global strcspn:function
	section .text
	
strcspn:
	push rbp
	mov rbp, rsp

	mov rax, 0
	mov rcx, 0

	jmp strcspn_loop
	
strcspn_start:
	inc rdi
	inc rcx
	
strcspn_loop:
	cmp byte[rdi], 0
	je strcspn_end

	mov r8, rsi
	jmp strcspn_find
	
strcspn_start_find:
	inc r8
	
strcspn_find:
	mov r9b, byte[rdi]
	mov r10b, byte[r8]

	cmp r9b, r10b
	je strcspn_end

	cmp r10b, 0
	je strcspn_start
	
	cmp r9b, r10b
	jne strcspn_start_find

strcspn_end:
	mov rax, rcx

	mov rsp, rbp
	pop rbp

	ret
