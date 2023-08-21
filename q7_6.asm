ASSUME CS:CODE, DS:DATA
DATA SEGMENT
         db '1. file         '
         db '2. edit         '
         db '3. search       '
         db '4. view         '
         db '5. options      '
         db '6. help         '
DATA ENDS

CODE SEGMENT
    start:mov  ax,DATA
          mov  ds,ax
          mov  cx,6
          mov  bx,0
          mov  si,10h
    s:    mov  al,[bx+3]
          and  al,11011111B
          mov  [bx+3],al
          add  bx,10h
          LOOP s

          mov  ax, 4c00h
          int  21h
CODE ENDS
END start