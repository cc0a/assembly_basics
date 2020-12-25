.model small
.data

 msg1 db 'enter an number between 0 and 9',10,13,'$'
 msg2 db 10,13,'you have entered the number: $'
 msgLuck db 10,13,'you are lucky !!!$'
.code
main proc

        mov ax,@data
        mov ds,ax

        ;print msg1
        mov ah,9 ; output text string
        lea dx,msg1 ; brings the address of msg1 to the register of dx - branched message
        int 21h ; DOS service call

        ;user input
        mov ah,1 ; takes input from keyboard
        int 21h ; DOS service call
        mov bl,al ; number is saved into bl register

        ;print the number
        mov ah,9 ; output text string
        mov dx,msg2 offset ; offset means equal to the variable of msg2 is now what dx is
        int 21h ; DOS service call

        mov ah,2 ; set cursor position
        mov dl,bl ; contents of bl moved to dl
        int 21h ; DOS service call

        ;if bl = 5
        cmp bl,'5' ; compare contents of bl register with the integer 5
        jne endif ; jump if bl =/= 5

        ;print lucky
        mov ah,9 ; output text string
        lea dx,msgLuck ; points dx to address of msgLuck
        int 21h ; DOS service call

    endif:mov ah,4ch ; terminate with return code
        int 21h ; DOS service call
        RET
end