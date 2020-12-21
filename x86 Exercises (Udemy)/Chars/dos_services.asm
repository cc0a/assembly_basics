.model small
.data

.code
main proc

    mov ah,1 ; enter a character from the keyboard
    int 21h ; DOS system dispatcher activated

    mov ah,2 ; print character to DOS
    mov dl,al ; moving item to be printed into register dl
    int 21h ; DOS dispatcher

    mov ah,4ch ; control of system returned to OS
    int 21h

    main endp
end  