ASSUME CS:CODE, DS:DATA, SS:STACK

STACK SEGMENT
          dw 8 dup(0)
STACK ENDS

DATA SEGMENT
         dw 10h dup(0FFFFh)
DATA ENDS

CODE SEGMENT
    start:mov  ax,STACK
          mov  ss,ax
          mov  sp,10h
          mov  ax,DATA
          mov  ds,ax
          mov  bx,0

          mov  cx,20h
    s:    mov  byte ptr [bx],bl
          inc  bx
          LOOP s

          mov  ax,4c00h
          int  21h
CODE ENDS
END start