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
	jmp SHR_rutine

SHR_rutine:
	mov eax, 9
	shr eax, 1
	push eax
	push nummsg
	call printf
	jmp ROL_rutine

ROL_rutine:
	mov eax, 5
	rol eax, 1
	push eax
	push nummsg
	call printf
	jmp end
end:
	mov eax, 1
	mov ebx, 0
	int 0x80
