

org 100h
 
mov CX,4
mov SI,0
dongu:
mov AL,sayilar+SI
AND sayilar2+SI,AL

inc SI
loop dongu


ret


sayilar db 10,20,30,40
sayilar2 db 15,15,15,15
