ORG 0H
MOV DPTR, #8500H
MOVX A, @DPTR
MOV R0, A   ; Load R0 with the value of N (example: N = 10)
MOV A, #00H    ; Clear the accumulator to store the sum
MOV R1, #01H   ; Initialize R1 with 1 (the first natural number)

SUM_LOOP:
ADD A, R1      ; Add the value of R1 to the accumulator
INC R1         ; Increment R1 to the next natural number
DJNZ R0, SUM_LOOP  ; Decrement R0 and jump to SUM_LOOP if R0 is not zero
MOV DPTR, #8600H
MOVX @DPTR, A
HERE: SJMP HERE ; Infinite loop to stop the program
END
