ASSUME CS:CODE, DS:DATA

DATA SEGMENT
           db 'BaSiC'
           db 'iNfOrMaTiOn'
DATA ENDS

CODE SEGMENT
      start:mov  ax,DATA
            mov  ds,ax
            mov  bx,0
          
            mov  cx,5
      s:    mov  al, [bx]
            and  al,11011111B
            mov  [bx],al
            inc  bx
            LOOP s

            mov  cx,11
      s0:   mov  al,[bx]
            or   al,00100000B
            mov  [bx], al
            inc bx
            LOOP s0

            mov  ax, 4c00h
            int  21h
CODE ENDS
END start