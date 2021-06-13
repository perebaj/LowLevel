TITLE 


INCLUDE Irvine32.inc

.data
array DWORD 1d, 2d, 3d, 4d, 5d 
theSum DWORD ?

.code
main PROC

	mov esi, OFFSET array
	mov ecx, LENGTHOF array
	call ArraySum
	mov	theSum, eax

Call writeint

Exit
main ENDP

ArraySum PROC
;Calcula a soma dos elementos de um array de inteiros de 32 bits
;Entrada: ESI: Offset (endereço) do array, ECX: nro de elementos do array
;Saida: EAX: Valor calculado para a soma

	push	esi
	push	ecx
	mov		eax,0
	
L1:	add		eax, [esi]
	add		esi,TYPE DWORD
	loop	L1

	pop		ecx
	pop		esi
	ret
ArraySum ENDP

END main