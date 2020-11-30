; zero flag ZF set to 1 if a given arithmetic operation results in zero

; SF = sign flag

.model
.data

.code
main proc
    mov al,5
    sub al,5

    mov bl,3 ; signed
    sub bl,5

    main endp
end

; Example 2

.model small
.data
num1 db 5
num2 db 5

.code
main proc  
    mov ax,@data
    mov ds,ax

    mov al,num1
    mov bl,num2

    sub al,bl

    main endp
end
