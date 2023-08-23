ASSUME CS:CODE

CODE SEGMENT
    start:mov bx,10
    s:    jmp s
          jmp short s
          jmp near ptr s
          jmp far ptr s
          mov ax, 4c00h
          int 21h
CODE ENDS
END start