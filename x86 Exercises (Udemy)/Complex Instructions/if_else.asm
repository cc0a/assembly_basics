.model small
.data
msg db 'enter the letter A' , 10,13,'$'
yes db 10,13,'you have entered the letter A$'
no db 10,13,'it is not the letter A$'
.code
main proc

        mov ax,@data
        mov ds,ax

        ; print message
        mov ah,9 ; output text string to terminal
        lea dx,msg ; point register address of msg to dx
        int 21h ; DOS service call

        ; user input 
        mov ah,1 ; retrieves input from the keyboard
        int 21h ; DOS service call

        ; if al = 'A'
        cmp al,'A'
        jne else ; jump if not equal

        ; print yes
        mov ah,9 ; output text string to terminal
        mov dx,yes offset ; point register of yes var to dx

        ; else (al <> 'A')
    else: mov ah,9 ; output text to terminal
          lea dx,no ; point var no at dx register
          int 21h

    endif:mov ah,4ch ; return with terminate code
          int 21h ; DOS sercvice call
          int

    main endp
end