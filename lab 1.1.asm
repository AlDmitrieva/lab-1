%include "io.inc"

;a-b*c
;10,12,28
;28,-1,-7
;16 бит

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    MOV     AX, 0x000A
    MOV     BX, 0x000C
    MOV     CX, 0x001C
    
    IMUL    BX, CX
    SUB     AX, BX
    ;PRINT_UDEC 1, AX
	
    MOV     AX, 0x001C
    MOV     BX, 0xFFFF
    MOV     CX, 0xFFF9
    
    IMUL    BX, CX
    SUB     AX, BX
    ;PRINT_UDEC 1, AX

    RET
