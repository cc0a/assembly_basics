.model small
.data

.code
main proc

    mov al,5
    mov bl,5
    sub al,bl

    jz label ; if ZF (zero flag) is raised, skip to label

    mov cl,12
    add cl,bl

    label: inc al ; this is the portion of code that is skipped to, and lines 13 & 14 are not executed

    main endp
end