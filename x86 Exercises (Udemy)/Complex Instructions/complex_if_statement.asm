.model small
.data
msg1 db 'enter an number between 0 and 9',10,13,'$'
msg2 db 10,13,'you have entered the number: $'
msgLuck db 10,13,'you are lucky !!!$'
.code
main proc

; if c1 and c2 are met, then:
;   do something
;   otherwise, do something else
; end if
        mov ax,@data
        mov ds,ax

        ; print msg1
        mov ah,9 ;output text string
        lea dx,msg1 ; brings address of msg1 to the register of dx
        int 21h ; DOS service call

        ; user input
        mov ah,1 ; takes input from the keyboard
        int 21h
        mov bl,al

        ; print the number
        mov ah,9 ; output text string
        mov dx,msg offset ; point address of msg to dx
        int 21h ; DOS service call

        mov ah,2 ; set cursor position
        mov dl,bl ; move contents of bl register into dl register
        int 21h ; DOS service call

        ; if bl >= 3 and bl <= 7
        cmp bl, '3'
        jb endif ; jump if below 3
        cmp bl,'7' ; compare contents of bl to integer 7
        ja endif ; jump if above 7

        ; print lucky
        mov ah,9 ; output text string
        lea dx,msgLuck ; point register of msgLuck to dx
        int 21h ; DOS service call

    endif:mov ah,4ch ; return with terminate code
          int 21h ; DOS service call
          RET

    main endp
end