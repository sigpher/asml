assume cs:code

code segment
         mov  ax,0ffffh
         mov  ds,ax
         mov  cx,000bh
         mov  dx,0
         mov  bx,0
    s:   mov  al,[bx]
         mov  ah,0
         add  dx,ax
         INC  bx
            
         LOOP s
         
        

         mov  ax,4c00h
         int  21h
code ends
end