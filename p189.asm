ASSUME CS:CODE

CODE SEGMENT
    start:mov ax,0
          jmp short s
    s1:   mov bx,0
          INC bx
          add ax,1
    s:    inc ax
          jmp near ptr s1
          mov ax, 4c00h
          int 21h
CODE ENDS
END start