global _start

section .text
_start:
    mov ebx, 1      ; start ebx at 1
    mov ecx, 6      ; number of iteratinos
label:
    add ebx, ebx    ; ebx += ebx