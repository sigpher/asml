ASSUME CS:CODE

CODE SEGMENT
    start:
          mov ax,0123h
          mov ds:[0],ax
          mov word ptr ds:[2],0
          jmp dword ptr ds:[0]

          mov ax,4c00h
          int 21h
CODE ENDS
END start