; more branching instructions...ONLY for unsigned numbers!!!

.model small
.data

.code
main proc

        mov al,5 ; unsigned
        mov bl,1 
        
        sub al,bl

        ja ; jump if above

        jae ; jump if above or equal to
        
        jb ; jump if below

        jbe ; jump if below or equal to

        je ; jump if equal to