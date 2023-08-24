ASSUME CS:CODE, DS:DATA

DATA SEGMENT
         dw 1,2,3,4,5,6,7,8
         dd 0,0,0,0,0,0,0,0
DATA ENDS

CODE SEGMENT
    start:mov  ax,DATA
          mov  ds,ax
          mov  si,0
          mov  di,10h

          mov  cx,8
    s:    mov  bx,[si]
          call cube
          mov  [di],ax
          mov  [di].2,dx
          add  si,2
          add  di,4
          loop s

          mov  ax, 4c00h
          int  21h

    cube: mov  ax,bx
          mul  bx
          mul  bx
          ret
          
CODE ENDS
END start