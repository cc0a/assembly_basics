.model small
.data
    var1 db 1001b   ; -128 <= db <= 255
    var2 dw 151     ; -32768 <= dw <= 65536
    var3 db 0aeh    ; by putting a 0 in front of the letters, we are letting the CPU know that it is a hexadecimal unless the hex value starts with a number

.code
main proc

    main endp
end