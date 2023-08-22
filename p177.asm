ASSUME CS:CODE, DS:DATA

DATA SEGMENT
         db 60h dup(0FFh)
         db 'DEC'
         db 'Ken Oslen'
         dw 137
         dw 40
         db 'PDP'
DATA ENDS

CODE SEGMENT
    start:mov ax,DATA
          mov ds,ax
          mov bx,60h

          mov word ptr [bx+0ch],38
          mov word ptr [bx+0eh],70
          mov si,0
          mov byte ptr [bx].10h[si], 'V'
          INC si
          mov byte ptr [bx].10h[si], 'A'
          INC si
          mov byte ptr [bx].10h[si], 'X'
          mov ax,4c00h
          int 21h
CODE ENDS
END start