%include "io.inc"

;a-b*c
;10,12,28
;28,-1,-7
;16 бит

section .text
global CMAIN
CMAIN:
    ;write your code here
    
    FLD     DWORD [a]
    FLD     DWORD [b]
    FLD     DWORD [c]
    FMUL
    FSUB
    FST     DWORD [r]
    
    FLD     DWORD [a1]
    FLD     DWORD [b1]
    FLD     DWORD [c1]
    FMUL
    FSUB
    FST     DWORD [r1]

    ret
    
section .data
a: DD 0x41200000
b: DD 0x41400000
c: DD 0x41E00000
r: DD 0x00000000
a1: DD 0x41E00000
b1: DD 0xBF800000
c1: DD 0xC0E00000
r1: DD 0x00000000