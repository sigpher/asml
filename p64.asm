ASSUME CS:CODE, DS:DATA, SS:STACK

DATA SEGMENT
         dw 0123h,0456h,0789h,0abch,0defh,0fedh,0cbah,0987h
DATA ENDS

STACK SEGMENT
          dw 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
STACK ENDS

CODE SEGMENT
    start:mov ax,DATA
          mov ds,ax
          mov ax,STACK
          mov ss,ax
          mov sp, 20h
CODE ENDS