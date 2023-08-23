ASSUME CS:CODE

CODE SEGMENT
    start:mov bx,0
    s:    inc bx
          mov si, offset s
          mov di, offset s0

          mov ax,cs:[si]
          mov cs:[di],ax

    s0:   nop
          nop
          nop
          nop
          mov ax, 4c00h
          int 21h
CODE ENDS
END start