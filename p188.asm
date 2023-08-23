ASSUME CS:CODE

CODE SEGMENT
    start:mov ax,0
          jmp short s
          add ax,1
    s:    inc ax

          mov ax,4c00h
          int 21h
CODE ENDS
END start