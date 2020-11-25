global _start

section .text
_start:
    mov ebx, 1      ; start ebx at 1
    mov ecx, 4      ; number of iterations
label:
    add ebx, ebx    ; ebx += ebx ebx is doubled 2, 4, 8, 16
    dec ecx         ; dec -= decrement, decrement is more efficient than subtracting
    cmp ecx, 0      ; compare ecx with 0
    jg label        ; jump to label if greater
    mov eax, 1      ; sys_exit system call
    int 0x80

; output is 16