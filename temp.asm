ASSUME CS:CODE, DS:DATA, SS:STACK

STACK SEGMENT
          dw 8 dup(0)
STACK ENDS

DATA SEGMENT
         db '1. clang           '
         db '2. goang           '
         db '3. rust            '
         db '4. javascript      '
         db '5. python          '
DATA ENDS

CODE SEGMENT
    start:
CODE ENDS
END start