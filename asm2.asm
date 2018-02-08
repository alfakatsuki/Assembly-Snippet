segment     .data

	msg     db  'Hello '                 ;our dear string
	len     equ $-msg                             ;length of our dear string
	newl	db 10

segment		.bss
	inputs resb 4

segment     .text
	global  main                              ;must be declared for linker (ld)
	

	
main:                                         ;tell linker entry point

		mov     edx,len                           
  	mov     ecx,inputs                           ;alamat
    mov     ebx,0                               ;file descriptor (stdin)
    mov     eax,3                              ;read 
    int     0x80                                ;call kernel
    
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, inputs
	mov edx, 1
	int 0x80
	

