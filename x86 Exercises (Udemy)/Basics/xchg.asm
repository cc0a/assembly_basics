.model small
.data
var1 db 5
var2 db 7

.code
main proc
    mov al,5
    mov bl,7
    xchg al,bl      ; items being flipped should be registers or variables, not constants...however they cannot *both* be variables (source and destination)


    main endp
end