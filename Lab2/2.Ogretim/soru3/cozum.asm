

org 100h
 

mov CX,4
mov SI,0
mov DI,0
dongu:  
mov AL,sayilar+DI
cbw
mov BL,sayilar+DI
mul BX
mul BX

SUB AX,2
mov kup+SI,AX

inc SI
inc SI
inc DI 
loop dongu 
 
 

ret

sayilar db 15,25,60,35
kup dw 4 dup(?)
