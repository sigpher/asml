assume cs:code

code segment
         mov ax,0ffffh
         mov ds,ax
         mov cx,000bh
         mov dx,0
         mov bx,0
    s:   mov dl,[bl]
         mov dh,0
        

         mov ax,4c00h
         int 21h
code ends
end