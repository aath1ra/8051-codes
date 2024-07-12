ORG 0H
MOV DPTR, #8500H     ; Initialize data pointer to the start of the series
MOVX A, @DPTR        ; Load the first number into Accumulator A
MOV R0, A            ; Move the first number into Register R0 (this will be used as the count of numbers)
INC DPTR             ; Increment data pointer to point to the first number in the series
MOVX A, @DPTR        ; Load the first number into Accumulator A
MOV B, A             ; Initialize B with the first number (assume it's the largest for now)
DEC R0               ; Decrement R0 as we've already processed one element

L1:
    INC DPTR         ; Increment data pointer to point to the next number
    MOVX A, @DPTR    ; Load the next number into Accumulator A
    CJNE A, B, L2    ; Compare A with B, jump to L2 if they are not equal
L2:
    JC L3            ; If A is less than B, jump to L3
    MOV B, A         ; Update B with the current number if A is greater than B
L3:
    DJNZ R0, L1      ; Decrement R0, and jump to L1 if R0 is not zero

MOV A, B             ; Move the largest number to Accumulator A
INC DPTR             ; Increment data pointer to point to the next address
MOVX @DPTR, A        ; Store the largest number at the next memory location
HERE: SJMP HERE      ; Infinite loop to end the program
END 

