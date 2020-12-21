.model small
.data
    var1 db ?

.code
main proc
        mov ax,@data
        mov ds, ax

        mov al,5 ; al contains 5
        mov ah,6 ; ah contains 6

        cmp al,ah ; which is greater, al -or- ah ?

        ja above ; jump if above, if al is greater than ah, jump to line 18 and ignore line 17

        mov var1,0
        jmp endf
    above:mov var1,1
        endf:RET

        main endp
    end

; For Above 
; AL > AH => var1 = 1
; Else var1 = 0

.model small
.data 
var1 db ?

.code
main proc

        mov ax,@data
        mov ds,ax

        mov bl,7
        mov bh,6

        cmp bl,bh

        jnae below

        mov var1,0
        jmp endf
    
    below:mov var1,1
        endf:rret

        main endp

end

; For Above
; BL < BH => var1 = 1
; Else var1 = 0

.model small
.data
var 1 db ?

.code
main proc

            mov ax,@data
            mov ds,ax

            mov cl,7
            mov ch,6

            cmp cl,ch

            jae aboveoreq

            mov var1,0
            jmp endf

    aboveoreq:mov var1,1
        endf:RET


    main endp
end


; For Above
; CL >= CH => var1 = 1
; Else var1 = 0

.model small
.data
var 1 db ?

.code
main proc

            mov ax,@data
            mov ds,ax

            mov dl,7
            mov dh,6

            cmp dl,dh

            jbe beloworeq

            mov var1,0
            jmp endf

    beloworeq:mov var1,1
        endf:RET

    main endp
end

; For Above
; DL <= DH => var1 =1 
; Else var1 = 0

.model small
.data
var1 db ?

.code
main proc

        mov ax,@data
        mov ds,ax

        mov al,7
        mov ah,6

        cmp al,ah

        ja above
        jb below

        mov var1,3
        jmp endf

    above:mov var1,1
        jmp endf
    below:mov var1,2
        endf:RET
    
    main endp
end

; For Above
; AL > AH => var1 = 1
; Else if AL < AH var1 = 2
; Else var1 = 3