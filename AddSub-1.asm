TITLE Add And Subtract              (AddSub.asm)

; This program adds And subtracts 16-bit integers.
; Last update: 06/01/2006

INCLUDE Irvine32.inc

.code
main PROC

	mov	ax,1000h		; AX = 1000h
	add	ax,4000h		; AX = 5000h
	sub	ax,2000h		; AX = 3000h
	call	DumpRegs

	exit
main ENDP
END main