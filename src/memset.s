[BITS 64]

	global my_memset:function

	section .text

my_memset:

	push rbp
	mov rbp, rsp

	mov rax, rdi
	
loop_memset:
	cmp rdx, 0	
	jle end_memset

	mov byte[rdi], sil

	dec rdx		
	inc rdi
	
	jmp loop_memset

end_memset:

	mov rsp, rbp
	pop rbp

	ret
	
	
