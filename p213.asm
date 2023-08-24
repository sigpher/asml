ASSUME CS:CODE, DS:DATA

DATA SEGMENT
          db 'conversation'
DATA ENDS

CODE SEGMENT
    start:mov  ax,DATA
          mov  ds,ax
          mov  si,0
          mov  cx,12
          call cap

          mov  ax, 4c00h
          int  21h

    cap:  and  byte ptr [si],11011111b
          INC  si
          loop cap
          ret


CODE ENDS
END start