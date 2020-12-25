global _start

section .text
_start:
    mov ecx, 99     ; set ecx to 99
    mov ebx, 42     ; exit status is 42
    mov eax, 1      ; sys_exit system call
    cmp ecx, 100    ; compare ecx to 100
    jl skip         ; jump if less than = jl, jump = jmp
    mov ebx, 13     ; exit status is 13 this is jumped over...
skip:
    int 0x80
    ; output is 42
; The following are also conditional jump operands:
; je jump if equal
; jne jump if not equal
; jg jump if greater
; jge jump if greater or equal
; jl jump if less
; jle jump if less or equal to
; 