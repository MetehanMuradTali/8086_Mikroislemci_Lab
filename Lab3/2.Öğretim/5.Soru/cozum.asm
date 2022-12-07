; multi-segment executable file template.

data segment
    kelime1 db "bukelime"
    kontrol db 0
    flag db 8 dup(0)
ends

extra segment
    kelime2 db "bUkelimE"
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov ax, extra
    mov es, ax 
    
    
    mov di,0
    mov si,0
    mov cx,8
    dongu:
    cmpsb
    jnz farkli
    jz ayni
    loop dongu
    
    ayni:
    jcxz bitir
    dec si
    mov kontrol,1
    mov bl,kontrol
    mov flag+si,bl
    inc si
    loop dongu
    
    farkli:
    jcxz bitir
    dec si
    mov kontrol,0
    mov bl,kontrol
    mov flag+si,bl
    inc si
    loop dongu
    
    
    bitir:
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
