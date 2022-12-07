; multi-segment executable file template.

data segment
    ; add your data here!
    sayi db -2,-1,-3,-1,9,-1
    bul db 0
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
    
    mov al,-1
    mov cx,6
    mov di,0
    
    dongu:
    scasb
    jz arttir
    loop dongu:
    
    arttir:
    inc bul
    loop dongu:

    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
