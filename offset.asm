ASSUME CS:CODE

CODE SEGMENT
    start:mov cx,offset start
    s:    mov dx,offset s

          mov ax, 4c00h
          int 21h
CODE ENDS
END start