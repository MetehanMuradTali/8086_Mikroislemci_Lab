
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


mov cx,5
mov al,2
mov si,0
dongu:
jcxz bitir        
add sayilar+si,al
inc si
loopne dongu

bitir:

ret
sayilar db 12,-15,4,7,-9



