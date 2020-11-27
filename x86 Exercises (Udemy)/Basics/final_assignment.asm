; 1. a = b - a
; 2. a = -(a + 1)
; 3. c = a + b
; 4. b = 3 * b + 7
; 5. a = b - a -1
;

; NUMBER 1
; a = b - a
.model small
.data

varA db 6
varB db 3

.code
main proc
    mov ax,@data
    mov ds,ax

    mov al,varB 
    sub al,varA 
    mov varA,al

    main endp
end

; NUMBER 2
; a = -(a + 1)
.model small
.data

varA db 6

.code
main proc
    mov ax,@data
    mov ds,ax

    mov al,varA ; al = 6
    inc al      ; al = 7
    neg al      ; al = -7
    mov varA,al ; varA = al || varA = -7

    main endp
end

;NUMBER 3
; c = a + b
.model small
.data

varA db 6
varB db 3
varC db 8

.code
main proc
     mov al,varA
     add al,varB
     mov varC,al

    main endp
end

;NUMBER 4
; b = 3 * b + 7
.model small
.data

varA db 6
varB db 3
varC db 8

.code
main proc
     mov al,B
     add al,al ;2*B
     add al,al ;3*B
     add al,7
     mov B,al
    main endp
end

;NUMBER 5
; a = b - a -1
.model small
.data

varA db 6
varB db 3
varC db 8

.code
main proc
     mov al,varA ;6
     sub al,varB ;3
     dec al
     mov varA,al
    main endp
end
