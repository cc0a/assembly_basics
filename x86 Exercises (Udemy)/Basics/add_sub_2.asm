.model small
.data
num1 db 6
num2 db 3
sum db 0
def db 0

.code
main proc

    mov ax, @data
    mov ds,ax

    mov al,num1         ; al = 6
    add al,num2         ; al = 9
    mov sum,al

    mov al,num1         ; al = 6
    sub al,num2         ; al = 3
    mov sum,al


    main endp
end