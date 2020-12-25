
.model small

.data

 msg1 db 10,13,'enter a number between 0 and 9',10,13,'$'
 
 msg2 db 10,13,'you have entered the number: $'
 
 msgLuck db 10,13,'you are lucky !!!$'

.code

main proc
    
           mov ax,@data
           mov ds,ax
           
           ;print msg1
    repeat:mov ah,9 ; output text to terminal
           lea dx,msg1 ; point msg1 var to register of dx
           int 21h ; DOS service call
           
           ;user input
           mov ah,1 ; inputs a single char from keyboard
           int 21h ; DOS service call
           
     while:cmp al,'0' ; check if al == 0
           jb repeat ; jump below if counter is below 0
           cmp al,'9' ; check if al == 9
           ja repeat ; jump above if al == 9
           mov bl,al ; move contents of al into bl
           
           ;print the number
           mov ah,9 ; output text to terminal
           mov dx,msg2 offset ; point msg2 var to dx
           int 21h ; DOS service call
           
           mov ah,2
           mov dl,bl
           int 21h   
           
     endif:mov ah,4ch
           int 21h
           ret 

    
    main endp

end