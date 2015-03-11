[BITS 64]

	global rindex
	extern strlen

	section .text

rindex:

	push rbp
	mov rbp, rsp

	push rsi		; push rsi dans la stack
	push rdi		; push rdi dans la stack
	
	call strlen wrt ..plt	 	; strlen(rdi)
	mov rcx, rax		; mets le return de strlen dans rcx
	dec rcx			; rcx --

	pop rdi			; pop de la stack rdi
	pop rsi			; pop de la stack rsi

	
loop_rindex:

	cmp rcx, 0		; if rcx == 0
		je end_rindex_error	; error

	mov r8, rdi		; move rdi dans une registre temporaire
	add r8, rcx		; ajoute rcx à *r8
	
	cmp byte[r8], sil	; if (r8[rcx] == arg2)
		je end_rindex		; valid

	dec rcx			; rcx --

	jmp loop_rindex

end_rindex_error:
	mov rax, 0		; puts return à NULL
	
	mov rsp, rbp
	pop rbp

	ret

end_rindex:
	mov rax, r8

	mov rsp, rbp
	pop rbp

	ret
	
	
