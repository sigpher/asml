ASSUME CS:CODE, SS:STACK
STACK SEGMENT
          db 16 dup(0)
STACK ENDS

CODE SEGMENT
          mov  ax,4c00h
          int  21h

    start:mov  ax,STACK
          mov  ss,ax
          mov  sp,10h
          mov  ax,0
          push CS
          push ax
          mov  bx,0
          retf
CODE ENDS
END start