.model small
.data

.code
main proc

            mov al, 255 ;unsigned
            add al, 1

            jc of

            mov bl,5

        of :mov, dl,1

    main endp
end

; the only flags that can be tested for are CF, OF, ZF, SF, PF, and AF
; SO jc jo jz et will jump IF flag is raised
; ALSO jnc jno jnz == jump IF specified flag is NOT raised
; jump to of 