.model small
.data

.code
main proc

        mov ah,1 ; is moved into ah
        int 21h

        cmp al,48 ; numnbers in ASCII begin @ 48
        jb endf   ; if the char in ah is > 48 end program
        cmp al,57 ; numbers in ASCII end @ 57
        ja endf   ; if the char in ah is < 57 end program

        sub al,48 

    endf:mov ah,4ch
        int 21h
        RET

    main endp
end