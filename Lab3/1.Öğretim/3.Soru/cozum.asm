; multi-segment executable file template.

data segment
    ; add your data here!
    metin1 db 'bir dizi'
    ayni db 0
ends

extra segment
     metin2 db 'bir Dizi'
ends


stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov ax,extra
    mov es, ax 
    
    
    mov cx,8
    mov di,0
    mov si,0
    dongu:
    cmpsb
    jz arttir
    loop dongu:
    
    arttir:
    inc ayni
    loop dongu:

    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
