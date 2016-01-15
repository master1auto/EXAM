;configure all ports as output
mov dx,406h
mov al,80h
out dx,al 
;ICW1
mov	AL,00010011B
out	30h,AL
;ICW2
mov	AL,60H
out	32h,AL
;ICW4
mov	AL,00000001B
out	32h,AL
;OCW1
mov 	AL,11110011B
out	32h,AL 
;Button interrupt installation
mov	BX,0
mov	DS,BX
mov	AX,OFFSET butt
mov	BX,63h*4
mov	WORD PTR [BX],AX
mov	WORD PTR [BX+2],cs
;Timer interrupt installation
mov	BX,0
mov	DS,BX
mov	AX,OFFSET tim
mov	BX,62h*4
mov	WORD PTR [BX],AX
mov	WORD PTR [BX+2],cs
;timer configuration 
; timer 0 in mode 0
mov	AL,00110000B
out	46h,AL 
mov si,0
tt:nop
jmp tt
hlt
butt: 
mov dx,402h
mov al,01h
out dx,al 
inc si
mov	al,0C8h
out	40h,AL
mov	al,00h
out	40h,AL
iret
tim: 
cmp si,1
jnz tt
mov dx,402h
mov al,02h
out dx,al 
dec si
mov	al,90h
out	40h,AL
mov	al,00
out	40h,AL
tt:iret
