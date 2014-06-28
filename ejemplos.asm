;#########################################
;# Ejemplos de uso de SAL, SHR, ROL 	 #
;#########################################

global main
extern printf
extern scanf

section .data
	nummsg: db "%d", 10, 0

section .text

main:
	jmp SAL_rutine

SAL_rutine:
	mov eax, 3
	sal eax, 2
	push eax
	push nummsg
	call printf
	add esp, 4
	jmp SHR_rutine

SHR_rutine:
	mov eax, 9
	shr eax, 1
	push eax
	push nummsg
	call printf
	add esp, 4
	jmp ROL_rutine

ROL_rutine:
	xor eax, eax
	xor al, al
	mov al, 192
	rol al, 2
	push eax
	push nummsg
	call printf
	add esp, 4
	jmp end
end:
	mov eax, 1
	mov ebx, 0
	int 0x80
