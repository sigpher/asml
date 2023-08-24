ASSUME CS:CODE, DS:DATA

STACK SEGMENT
          db 'conversation'
STACK ENDS

DATA SEGMENT
         db 16 dup(0)
DATA ENDS

CODE SEGMENT
    start:mov ax,DATA
          mov ds,ax

          mov ax, 4c00h
          int 21h
CODE ENDS
END start