

org 100h

mov CX,4
mov SI,0
dongu:
mov AL,sayilar+SI
AND AL,11000011b
mov sayilar2+SI,AL
 
inc SI
loop dongu


ret


sayilar db 20,69,17,15
sayilar2 db 4 dup(?)

