ASSUME CS:CODE, DS:DATA, SS:STACK

DATA SEGMENT
         db 'ibm             '
         db 'dec             '
         db 'dos             '
         db 'vax             '
    ;  dw 0
DATA ENDS

STACK SEGMENT
          dw 0,0,0,0,0,0,0,0
STACK ENDS

CODE SEGMENT
    start:mov  ax,DATA
          mov  ds,ax
          mov  bx,0
          mov  cx,4
          mov  ax,STACK
          mov  ss,ax
          mov  sp,10h

          
    ; s0:   mov  ds:[40h], cx
    s0:   push cx
          mov  si,0
          mov  cx,3
          
    s:    mov  al, [bx+si]
          and  al,11011111B
          mov  [bx+si],al
          inc  si
          LOOP s

          add  bx,10h
    ;   mov  cx,ds:[40h]
          pop  cx
          LOOP s0

          mov  ax,4c00h
          int  21h
CODE ENDS
END start