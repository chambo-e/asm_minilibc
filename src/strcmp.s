[BITS 64]

	global strcmp:function
	section .text

strcmp:
	push rbp
	mov rbp, rsp

	mov rax, 0
	
	jmp strcmp_loop
	
match_strcmp:
	inc rdi
	inc rsi

strcmp_loop:
	mov r10b, byte[rdi]
	mov r11b, byte[rsi]

	cmp r10b, 0
	je sub_strcmp
	cmp r11b, 0
	je sub_strcmp

	cmp r10b, r11b
	je match_strcmp

sub_strcmp:	
	mov r8b, byte[rdi]
	mov r9b, byte[rsi]

	sub r8b, r9b
	movsx rax, r8b
	
strcmp_end:
	mov rsp, rbp
	pop rbp

	ret
	
