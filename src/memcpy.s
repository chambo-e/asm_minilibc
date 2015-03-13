[BITS 64]

	global my_memcpy:function

	section .text

my_memcpy:

	push rbp
	mov rbp, rsp

	mov rax, rsi
	
loop_memcpy:
	cmp rdx, 0
	jle end_memcpy

	mov sil, byte[rdi]

	dec rdx		
	inc rsi
	inc rdi
	
	jmp loop_memcpy

end_memcpy:

	mov rsp, rbp
	pop rbp

	ret
	
	
