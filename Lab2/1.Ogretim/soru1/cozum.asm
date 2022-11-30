
org 100h

mov AX,0BCDEh
push AX

mov AX,0AB03h
push AX
    
mov CX,2 
mov DI,0 

dongu:
pop AX
mov dusuk_deger+DI,AL
mov yuksek_deger+DI,AH 
inc DI
loop dongu

ret
yuksek_deger db 2 dup(?)
dusuk_deger db 2 dup(?)



