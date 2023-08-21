ASSUME CS:CODE, DS:DATA

DATA SEGMENT
         db 'welcome to masm!'
         db '................'
DATA ENDS

CODE SEGMENT
    start:mov  ax,DATA
          mov  ds,ax
          mov  si,0
          mov  cx,8

    s:    
          mov  ax,0[si]
          mov  10h[si],ax
          add  si,2
          LOOP s

          mov  ax,4c00h
          int  21h
CODE ENDS
END start
