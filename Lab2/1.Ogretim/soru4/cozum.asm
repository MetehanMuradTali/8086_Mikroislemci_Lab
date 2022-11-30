

org 100h

mov CX,4
mov DI,0
dongu:
mov AL,sayilar+DI
cbw
DIV sayilar2+DI
mov kalan+DI,AH
inc DI
loop dongu

ret



sayilar db 10,20,30,40
sayilar2 db 3,4,7,6
kalan db 4 dup(?)