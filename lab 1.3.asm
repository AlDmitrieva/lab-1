%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    MOV     AX, 4
    MOV     BX, 12
    MOV     CX, 1
    MOV     DX, 7
    CMP     CX, BX
    JL      skip
    JMP     answer
skip:
    CMP     AX, DX
    JL      answ
    JMP     answer
answ:
    ;Вывод ответа, что прямые пересекаются
    RET
answer:
    ;Вывод ответа, что прямые не пересекаются
    RET