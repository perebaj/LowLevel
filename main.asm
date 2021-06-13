TITLE MASM Template						(main.asm)

; Description:
; 
; Revision date:

INCLUDE Irvine32.inc

.data

myMessage Byte "MASM program example", 0Dh, 0ah, 0


.code

main PROC
	call Clrscr

	mov	 edx, OFFSET myMessage
	
     Call WriteString

Exit
main ENDP

END main