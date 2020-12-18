.model small
.data

.code
main proc

    mov dl,'A' ; mov 'A' into dl reads as ASCII 65
    add dl,1   ; add 1 into dl, dl now = 66 or ASCII 'B'

    mov ah,2   ; print char in DOS
    int 21h    ; access DOS

    mov ah,4ch ; exit DOS
    int 21h

    main endp
end

; from A to B above

.model small
.data

.code
main proc

    mov dl,'A' ; mov 'A' into dl reads as ASCII 65
    add dl,32  ; 32 added to 65, for an ASCII value of 97 or 'a'

    mov ah,2   ; print char in DOS
    int 21h    ; access DOS

    mov ah,4ch ; exit DOS
    int 21h

    main endp
end