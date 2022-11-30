
org 100h

mov CX,4
mov DI,0
mov SI,3
dongu:
mov AL,cumle+DI
add Al,00000001b
mov cumle2+DI,AL 
mov ters+SI,AL
dec SI
inc DI
loop dongu


ret


cumle db 'harf'
cumle2 db 4 dup(?)
ters db 4 dup(?)

