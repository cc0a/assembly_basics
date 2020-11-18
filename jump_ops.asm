global _start

section .text
_start:
    mov ebx, 42     ; exit status is 42
    mov eax, 1      ; sys_exit system call
    jmp skip        ; jump to "skip" label / skip OVER line 8 to line 9
    mov ebx, 13     ; exit status is 13
skip:
    int 0x80