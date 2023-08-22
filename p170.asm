ASSUME CS:CODE

CODE SEGMENT
    start:
          mov dx,0001h
          mov ax,86a1h
          mov bx,100
          div bx
          mov ax,4c00h
          int 21h
CODE ENDS
END start