org 100h 

;Soru1
Mov CX,4
Mov SI,3 
Mov DI,0
dongu1:  
Mov Al,0
Mov Al,sayilar+SI
Mov sayilar2+DI,Al 
Dec SI
Inc DI
LOOP dongu1

;Soru2
Mov CX,4 
Mov DI,0
dongu2:
Mov AL,sayilar2+DI
cbw
IDIV [sayi1]
Mov sayilar3+DI,AL
Mov yenidizi+DI,AL
Inc DI
Loop dongu2
      
;Soru3     
Mov CX,4 
Mov SI,0
dongu3:
Mov AL,3
Mul SI 
Sub yenidizi+SI,Al
Inc SI
Loop dongu3    
     
ret
sayilar db -55,15,-70,-20
sayilar2 db 4 dup(?)
sayilar3 db 4 dup(?)    
sayi1 db 5 
yenidizi db 4 dup(?)  
