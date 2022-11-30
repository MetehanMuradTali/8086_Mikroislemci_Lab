

org 100h


mov CX,3
mov SI,0
mov DI,1
dongu: 
mov AL,dizi+SI
mov BL,dizi+DI
sub AL,BL
mov yeni+DI,AL

inc SI
inc DI
loop dongu

ret


dizi db -6,9,8,-12
yeni db -6,0,0,0

