.model small
.data
    C EQU 10            ; constant
    var1 db 12          ; -128 <= db <=255
    var2 dw 0a112h      ; -32768 <= dw <= 65536


.code
main proc
    mov al.15
    mov dh,al        

    main endp

end