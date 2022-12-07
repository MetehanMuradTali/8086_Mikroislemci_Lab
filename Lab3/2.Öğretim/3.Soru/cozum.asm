
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


mov al,sayi1
mov bl,sayi2

add al,bl

jc arttir
jnc bitir

arttir:
add tasma,1

bitir:
ret
sayi1 db 1 
sayi2 db 200
tasma db 0



