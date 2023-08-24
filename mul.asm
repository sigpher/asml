ASSUME CS:CODE, DS:DATA

DATA SEGMENT
         db 16 dup(0)
DATA ENDS

CODE SEGMENT
    ; start:mov ax,DATA
    ;       mov ds,ax
    ;       mov ax, 0F000h
    ;       mov word ptr ds:[0],0a00h
    ;       mul word ptr ds:[0]

    ;       mov ax, 4c00h
    ;       int 21h

    ; start:mov al,100
    ;       mov bl,10
    ;       mul bl
    ;       mov ax, 4c00h
    ;       int 21h
    start:mov ax,100
          mov bx,10000
          mul bx
CODE ENDS
END start