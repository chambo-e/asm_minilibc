[BITS 64]

	global strcasecmp:function
	section .text

strcasecmp:
	push rbp
	mov rbp, rsp

	mov rax, 0
	
	jmp strcasecmp_loop
	
match_strcasecmp:
	inc rdi
	inc rsi

strcasecmp_loop:
	mov r10b, byte[rdi]
	mov r11b, byte[rsi]

	cmp r10b, 0
	je sub_strcasecmp
	cmp r11b, 0
	je sub_strcasecmp
	
	cmp r10b, 97
	jge upper_r10
	cmp r11b, 97
	jge upper_r11

	jmp compare_case
	
upper_r10:
	cmp r10b, 122
	jg compare_case
	sub r10b, 32
	cmp r11b, 97
	jl compare_case

upper_r11:
	cmp r11b, 122
	jg compare_case
	sub r11b, 32
	
compare_case:
	cmp r10b, r11b
	je match_strcasecmp
	
sub_strcasecmp:	
	mov r8b, byte[rdi]
	mov r9b, byte[rsi]

	sub r8b, r9b
	movsx rax, r8b
	
strcasecmp_end:
	mov rsp, rbp
	pop rbp

	ret
	
