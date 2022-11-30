
org 100h

mov CX,10
Mov DI,9
mov SI,0
dongu:
Add cumle+DI,11100000b
mov AL,cumle+DI
mov cumle2+SI,AL
dec DI
inc SI
loop dongu:

ret

;ascii olarak kucuk harflerden 32 cikarinca buyuk harf elde edilir.
cumle db 'hepsibuyuk'
cumle2 db 10 dup(?)
