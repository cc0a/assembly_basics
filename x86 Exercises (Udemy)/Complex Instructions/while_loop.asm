
.model small
.data
.code

main proc
    
             mov ah,2 ; keyboard input (single char)
             mov dl,'a' ; put the character 'a' into the dl register to be printed on first cycle
             
       while:cmp dl,'z' ; 
             ja endwhile ; if the letter is above z, jump to endwhile, otherwise continue loop
             int 21h ; DOS service request
             inc dl ; increment a to b, b to c, etc...
             
             jmp while ; back up to while (no conditions)
             
    endwhile:mov ah,4ch 
             int 21h
             ret
    main endp

end