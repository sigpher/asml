ASSUME CS:CODE

CODE SEGMENT
    s:   mov ax,bx           ;cs:offset s
         mov si,offset s
         mov di,offset s0
         


    s0:  nop                 ;cs:offset s0
         nop
         mov ax,4c00h
         int 21h
CODE ENDS
END 