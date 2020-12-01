1. mov ax,0FFFEh
   mov bx,1
   add ax,1
   ;

2. mov al,1
   mov bl,0FFh
   sub al,bl
   ;

3. mov al,0
   dec al
   ;

4. mov al,7Fh
   neg al
   ;

5. mov ax,1ABCh
   mov bx,512h
   xchg ax,bx
   ;

6. mov al,80h
   mov bl,0FFh
   add al,bl
   ; 

7. mov al,80h
   neg al
   ;