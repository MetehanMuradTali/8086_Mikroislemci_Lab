;sonra donulecek
org 100h

mov cx,5 
mov si,0 
mov di,0
dongu:
mov bl,10000000b
mov al,sayilar+si
inc si

add bl,al

jc negatiff
loop dongu 

negatiff:
jcxz ikinci_dongu 
mov al,sayilar+si
mov negatif+di,al 
inc di
loop dongu

ikinci_dongu:
mov cx,5
mov si,0
mov di,0 

dongu2:
mov bl,10000000b
add bl,sayilar+si
jnc pozitiff
loop dongu2 

pozitiff:
jcxz bitir 
mov al,sayilar+si
mov pozitif+di,al
inc si
inc di
loop dongu2



bitir:
ret

sayilar db 12,5,-6,-13,8
pozitif db 6 dup(?)
negatif db 6 dup(?)


