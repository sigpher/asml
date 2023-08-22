ASSUME CS:CODE, DS:DATA, SS:STACK

STACK SEGMENT
            dw 8 dup(0)
STACK ENDS

DATA SEGMENT
           db '1. clang        '
           db '2. golang       '
           db '3. rustlang     '
           db '4. javascript   '
           db '5. python       '
           db '6. carbon       '
DATA ENDS

CODE SEGMENT
      start:
            mov  ax,DATA
            mov  ds,ax
            mov  ax,STACK
            mov  ss,ax
            mov  sp,10h
            mov  bx,0

            mov  cx,6
      s0:   push cx
            mov  si,0
            
            mov  cx,5
      s:    mov  al,[bx+si+3]
            and  al,11011111B
            mov  [bx+si+3],al
            inc  si
            LOOP s

            pop  cx
            add  bx,10h
            LOOP s0

            mov  ax,4c00h
            int  21h
CODE ENDS
END start