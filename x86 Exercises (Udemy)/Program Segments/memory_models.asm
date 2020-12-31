.model medium
.data
 var1 db ?

.code
main proc
        
        mov ax,@data
        mov ds,ax 

        mov al,5
        mov ah,6

        cmp al,ah

        mov var1,0
        jmp endf
    
    above:mov var1,1
        endf:ret
    
    main endp
end