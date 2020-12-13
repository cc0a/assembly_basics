.model small
.data


.code
main proc

        begin:mov al,5
              add bl,12
              add al,bl

              jmp begin ; jumps back to the begin label without a condition, could also be jmp med or jmp begin

              mov bl,5
              sub bl,2
            med:mov
              inc dl
              dec bl
              neg al
        
        endf: RET
    
    main endp

end