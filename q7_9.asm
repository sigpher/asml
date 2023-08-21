ASSUME CS:CODE, DS:DATA, SS:STACK

STACK SEGMENT
          dw 0,0,0,0,0,0,0,0
STACK ENDS

DATA SEGMENT
         db '1. display      '
         db '2. brows        '
         db '3. replace      '
         db '4. modify       '
DATA ENDS

CODE SEGMENT
    start:mov  ax,STACK
          mov  ss,ax
          mov  sp,10h
          mov  ax,DATA
          mov  ds,ax
          mov  bx,0
          mov  cx,4

          
    s:    push cx
    
          mov  si,3
          mov  cx,4
          
    s0:   mov  al,[bx+si]
          and  al,11011111B
          mov  [bx+si],al
          inc  si
          LOOP s0
      
          add  bx,10h
          pop  cx
          LOOP s

          mov  ax,4c00h
          int  21h
CODE ENDS
END start