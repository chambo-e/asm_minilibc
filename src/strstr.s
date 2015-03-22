[BITS 64]

	global strstr:function
	section .text

strstr:
	push rbp
	mov rbp, rsp

	mov rcx, 0

	jmp loop_strstr

match:
	mov r10, rdi
	mov r11, rsi
	jmp match_loop

tmp_match:
	inc r10
	inc r11
	
match_loop:
	mov r8, 0
	mov r9, 0
	mov r8b, byte[r10]
	mov r9b, byte[r11]	

	cmp r9b, 0
	je end_match
	
	cmp r8b, r9b
	je tmp_match

tmp_inc:
	inc rdi
	
loop_strstr:
	mov r8, 0
	mov r9, 0
	mov r8b, byte[rdi]
	mov r9b, byte[rsi]

	cmp byte[rdi], 0
	je end_notmatch
		
	cmp r8b, r9b
	je match

	jmp tmp_inc
	
end_notmatch:
	mov rax, 0
	jmp end_strstr

end_match:
	mov rax, rdi
	
end_strstr:
	mov rsp, rbp
	pop rbp

	ret
