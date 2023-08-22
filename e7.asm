assume  cs:codesg,es:table,ss:stacksg

data segment
         db '1975','1976','1977','1978','1979','1980','1981','1982','1983','1984','1985','1986','1987','1988','1989','1990','1991','1992','1993','1994','1995'
         dd 16,22,382,1356,2390,8000,16000,24486,50065,97479,140417,197514,345980,590827,803530,1183000,1843000,2759000,3753000,4649000,5937000
         dw 3,7,9,13,28,38,130,220,476,778,1001,1442,2258,2793,4037,5635,8226,11542,14430,15257,17800
  
data ends

table segment
          db 21 dup('year summ ne ?? ')
table ends

stacksg segment
            dw 8 dup(0)    ;虽然只用到一个字，但即使你只定义一个字，系统也会分配8个字的空间
stacksg ends

codesg SEGMENT
    start: mov  ax, data
           mov  ds, ax

           mov  ax,table
           mov  es,ax

           mov  ax, stacksg
           mov  ss, ax
           mov  sp,10h

           mov  bx,0
           mov  di,0
           
           mov  cx,21
    s:     push cx
           mov  si,0

           mov  cx,2
    s1:    mov  ax,[bx].00h[si]
           mov  es:[si].00h,ax

           mov  ax,[bx].54h[si]
           mov  es:[si].05h,ax

           add  si,2
           LOOP s1

           mov  ax,[0a8h][di]
           mov  es:[0ah],ax

           mov  ax,[bx].54h
           mov  dx,[bx].56h
           div  word ptr es:[0ah]
           mov  es:[0dh],ax

           add  di,2

           add  bx,4

           mov  ax,es
           inc  ax
           mov  es,ax
           
           pop  cx
           LOOP s

           mov  ax, 4c00h
           int  21h
codesg ENDS
END start