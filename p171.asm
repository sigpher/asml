ASSUME CS:CODE, DS:DATA

DATA SEGMENT
         dd 100003
         dw 100
         dw 0
         dw 0
DATA ENDS

CODE SEGMENT
    start:
          mov ax, DATA
          mov ds, ax
          mov ax, ds:[0]
          mov dx, ds:[2]
          div word ptr ds:[4]
          mov ds:[6], ax
          mov ds:[8], dx
          mov ax, 4c00h
          int 21h
CODE ENDS
END start