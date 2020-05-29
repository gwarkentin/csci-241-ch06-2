; Program: Print_Fibonacci_Util_Overflow (Chapter 6)
; Description: Calculate and print Fibonacci sequence until SDWORD overflows
; Student:     Gabriel Warkentin
; Date:        02/25/2020
; Class:       CSCI 241
; Instructor:  Mr. Ding

INCLUDE Irvine32.inc

.code
main5 PROC

	; initialize regs
	mov eax, 0
	mov ebx, 1
	mov edx, 1
	mov ecx, 1								; counter

L1:	
	mov eax, ecx
	call WriteDec
	mov al, ":"
	call WriteChar
	mov al, " "
	call WriteChar

	mov eax, ebx
	call WriteInt
	call CrLf

	mov ebx, edx
	test ebx, 80000000h
	jnz L2

	mov edx, eax
	add edx, ebx

	inc ecx
	jmp L1

L2:
	call WaitMsg
	exit

main5 ENDP

END ;main5