.model small
.data
    num1 db 1
    num2 db 5
.code

main proc

        mov ax,@data
        mov ds,ax

        mov al,num1 ; 1
        sub al,num2 ; -4

        jz eq ; if zero flag is raised, jump to eq, if result is 0...move on to line 17

        jns sup ; jump if NOT sign flag, since number is -4, sign flag is raised...if it were a positive number, jump to line 

        mov dl,2
        jmp endf

    eq:mov dl,0
        jmp endf
    sup:mov dl,1
        jmp endf
    endf: RET

    main endp
end