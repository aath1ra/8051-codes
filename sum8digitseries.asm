ORG 0H
MOV DPTR, #8500H
MOVX A, @DPTR
MOV R0, A
INC DPTR
MOV R1, #00H
MOV R2, #00H
L1:
MOVX A, @DPTR
ADD A, R1
JC L2
SJMP L3
L2:
INC R2
L3:
MOV R1, A
INC DPTR
DJNZ R0, L1
MOV A, R2
MOVX @DPTR, A
INC DPTR
MOV A, R1
MOVX @DPTR, A
HERE:SJMP HERE
END 