.model small
.data
msg db 'enter the letter A',10,13,'$'
yes db 10,13,'yuo have entered the letter A$'
no db 10,13,'it is not the letter A$'
.code
main proc

        mov ax,@data
        mov ds,ax

        ;print msg
        mov ah,9
        lea dx,msg
        int 21h

        ;user input
        mov ah,1
        int 21h

        ; if al='A'
        cmp al,'A'
        jne else

        ; print yes
        mov ah,9
        mov dx,yes offset
        int 21h
        jmp endif

        ; else (al <> 'A')
    else:mov ah,9
         lea dx,no
         int 21h

    endif:mov ah,4ch
          int 21h
          int
    
    main endp
end
