; multi-segment executable file template.

data segment
    ; add your data here!
    metin db 'bu dizi icindeki bosluklari bulun'
    bosluksayisi db 0
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax
              
    mov al,' '
    mov cx,33 
    mov di,0 
     
    jmp dongu
    
    
    arttir:
    inc bosluksayisi
    loop dongu
    
    dongu:
    scasb
    jz arttir
    loop dongu
     
    
    
    bitir:
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
