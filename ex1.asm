;configure all ports as output
mov dx,606h
mov al,80h
out dx,al 
;PC4 is on
mov dx,604h
cc:mov al,10h
out dx,al 
call delay3s
;PC5 is on 
mov al,20h
out dx,al 
call delay3s
;PC6 is on 
mov al,40h
out dx,al 
call delay3s
;PC7 is on 
mov al,80h
out dx,al 
call delay3s 
jmp cc
hlt

delay3s proc
mov bx,100
ff:dec bx
mov cx,7500
tt:nop
loop tt
cmp bx,0
jnz ff
ret
delay3s endp    
