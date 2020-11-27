.model small
.data

num1 db 6
num2 db 3
def db 0

.code
main proc

    mov ax,@data
    mov ds,ax
    
    inc num1
    inc num1

    dec num2
    dec num2

    mov al,num2     ; 3 moved into register
    neg al          ; 3 designated as -3
    add al,num1     ; num1-num2 => num1+(-num2) || 6 + -3 = 3

    main endp
end