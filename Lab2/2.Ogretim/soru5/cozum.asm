
org 100h

mov CX,4
mov SI,0
dongu:
mov AX,0
mov AL,sayilar+SI 
mov BL,sayilar2+SI
IDIV BL

mov kalan+SI,AH
mov bolum+SI,AL

inc SI
loop dongu


ret


sayilar db -10,-20,30,-40
sayilar2 db 3,4,7,6
kalan db 4 dup(?)
bolum  db 4 dup(?)
