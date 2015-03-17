[BITS 64]

	global strncmp:function
	section .text

strncmp:
	push rbp
	mov rbp, rsp

	mov rax, 0
	mov rcx, rdx

	jmp strncmp_loop

match_strncmp:
	inc rdi
	inc rsi
	dec rcx

strncmp_loop:
	cmp rcx, 0
	jle strncmp_end

	mov r10b, byte[rdi]
	mov r11b, byte[rsi]

	cmp r10b, 0
	je sub_strncmp
	cmp r11b, 0
	je sub_strncmp

	cmp r10b, r11b
	je match_strncmp

sub_strncmp:	
	mov r8b, byte[rdi]
	mov r9b, byte[rsi]
	sub r8b, r9b
	movsx rax, r8b
	
strncmp_end:

	mov rsp, rbp
	pop rbp

	ret
	
