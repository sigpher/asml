ASSUME CS:CODE, DS:DATA

DATA SEGMENT
         dd 8 dup(0FFFFFFFFh)
DATA ENDS

CODE SEGMENT
    start:mov ax,DATA
          mov ds,ax
          mov bx,10h
          mov byte ptr [bx], 2    ;被除数：如果除数为8位，被除数则为16位，默认在AX存放被除数
          mov ax, 10              ;如果除数为16位，被除数则为32位，在DX和AX存放，DX存放高16位，AX存放低16位
          div byte ptr [bx]
          inc byte ptr [bx]
          mov ax,9
          mov bx,4
          div bl

          mov ax,4c00h
          int 21h

CODE ENDS
END start
