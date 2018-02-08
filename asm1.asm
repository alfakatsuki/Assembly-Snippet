section .data
	msg db "Hello World!", 10 ; string msg = "Hello World!"
	msg_len equ $-msg
	
section .text
	global main ; mulai dari main
	
main:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, msg_len
	int 0x80
