; Code by Leon Gerencir
; Created for PTE MIK
STACK SEGMENT PARA STACK
	DB 64 DUP (' ')
STACK ENDS

DATA SEGMENT PARA 'DATA'

DATA ENDS

CODE SEGMENT PARA 'CODE'
	
	MAIN PROC FAR
		; Setting up the video mode
		MOV AH,00h
		MOV AL,0Dh
		INT 10h
		
		MOV AH,0Bh
		MOV BH,00h
		MOV BL,0Ch ; Setting the background black
		INT 10h
		
		MOV AH,0Ch ;Set the configuration for showing a pixel
		MOV AL,0Fh ; Choose white as color
		MOV BH,00h
		MOV CX,0Ah ;Set the X position
		MOV DX,0Ah 
		INT 10h
		
		RET
	MAIN ENDP
CODE ENDS
END