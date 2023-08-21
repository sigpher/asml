ASSUME CS:CODE, DS:DATA

DATA SEGMENT
         db 'BaSiC'
         db 'MinIX'
DATA ENDS

CODE SEGMENT
    start:mov  ax,DATA
          mov  ds,ax
          mov  bx,0
          mov  cx,5
    s:    
          mov  al, [bx]
          and  al, 11011111B
          mov  [bx],al
          mov  al,[5+bx]        ;mov al,5[bx] or mov al,[bx].5
          or   al, 00100000B
          mov  [5+bx],al
          inc  bx
          LOOP s

          mov  ax, 4c00h
          int  21h
CODE ENDS
END start