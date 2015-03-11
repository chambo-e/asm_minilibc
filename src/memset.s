[BITS 64]

	global memset

	section .text

memset:

	push rbp
	mov rbp, rsp

	mov rax, rdi
	mov r8, rdi
	
loop_memset:
	cmp rdx, 0	
	je end_memset

	mov byte[r8], sil

	dec rdx		
	inc r8
	
	jmp loop_memset

end_memset:

	mov rsp, rbp
	pop rbp

	ret
	
	
