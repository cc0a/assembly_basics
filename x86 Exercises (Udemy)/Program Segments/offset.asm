.model small 
.data

; data segment start

var1 db 5 ; offset = 0
var2 db 3 ; offset = 1
var3 dw 7 ; offset = 2
var4 db 2 ; offset = 3
; offset can be utilized in lieu of specifying a varable

; data segment end

; code segment start
.code
main proc
    
    mov ax,@data
    mov ds,ax
    mov var1,1 ; traditional method of moving 1 into var1 variable
    mov [0],1 ; offset method of moving 1 into var1
    mov var2,2 ; traditional method of moving 2 into var2
    mov [1],2 ; offset method of moving 2 into var2
   
    main endp

end

; code segment end