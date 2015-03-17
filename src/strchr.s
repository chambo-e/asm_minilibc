[BITS 64]

	global strchr:function
	section .text

strchr:
	push rbp
	mov rbp, rsp

	mov rcx, 0

loop_strchr:
	cmp byte[rdi], sil
	je end_strchr

	inc rdi

	cmp byte[rdi - 1], 0
	jne loop_strchr
	
end_strchr_error:
	mov rax, 0		; puts return à NULL

	mov rsp, rbp
	pop rbp

	ret

end_strchr:
	mov rax, rdi
	
	mov rsp, rbp
	pop rbp

	ret
