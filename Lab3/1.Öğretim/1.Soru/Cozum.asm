; multi-segment executable file template.

data segment
      metin db 'mikro dersi'
      metin1 db 11 dup(0)
      metin2 db 11 dup(0)
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

    mov al,'e'
    mov di,0
    mov cx,11
    mov si,0 
    
    dongu:
    scasb    
    jz dongu2
    dec di
    mov bl,metin+di
    mov metin1+di,bl
    inc di 
    loop dongu:
    
    dongu2:
    dec di
    mov bl,metin+di
    mov metin2+si,bl
    inc si
    inc di
    inc di
    loop dongu2:
            
    
    mov ax, 4c00h ; exit to operating system.
    int 21h
    
        
ends

end start ; set entry point and stop the assembler.
