ORG 0H
MOV DPTR, #8500H
MOVX A, @DPTR
MOV B, A
INC DPTR
MOVX A, @DPTR
MUL AB
INC DPTR
MOVX @DPTR, A
MOV A, B
INC DPTR
MOVX @DPTR, A
HERE:SJMP HERE
END 