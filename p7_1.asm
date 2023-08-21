ASSUME CS:CODE

DATA SEGMENT
         db 'unIX'
         db 'foRK'
DATA ENDS

CODE SEGMENT
    start:mov al,'a'
          mov bl,'b'
          mov ax, 4c00h
          int 21h
CODE ENDS
END start