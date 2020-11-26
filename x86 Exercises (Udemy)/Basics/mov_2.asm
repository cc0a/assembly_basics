; define a constant of C with a value of 15
; define two variables with a type of var1 and var2
; var1 = 12
; var2 = C
; Then, var1 = C and var2 = 12 (permutation)

.model small
.data
C EQU 15
    var1 db 12
    var2 db ?

.code
main proc
    mov ax,@data       ; VERY IMPORTANT
    mov ds,ax          ; MEMORY THIS
    mov var2,C
    mov al,var1
    mov ah,var2

    mov var2,al
    mov var1,ah

    main endp
end