ORG 0H
MOV DPTR, #8500H
MOVX A, @DPTR
MOV B, A
MOV R1, B
MUL AB
MOV B, R1
MUL AB
MOV DPTR, #8503H
MOVX @DPTR, A
HERE:SJMP HERE
END 