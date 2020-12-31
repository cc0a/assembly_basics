.model small
.data
  marks db 5,6,?,5,9,8 ; array - each variable has the size byte - if db each var is 1 byte or 8 bits, if dw each var is 2 bytes or 16 bits
.code
main proc

    mov ax,@data
    mov ds,ax

    mov al,marks+4 ; positions of array: 0-5, 1-6, 2-?, 3-5, 4-9 <--- 9 will be returned in al register with this instruction




    main endp
end