.model small
.data
.code

main proc
        
            mov ah,2 
            mov dl,'a'
            
            mov cx,26 ; number of iterations
            
        for:int 21h
            inc dl
            loop for
            
            
            mov ah,4ch
            int 21h  
            ret
    
    
    
    
    main endp
end