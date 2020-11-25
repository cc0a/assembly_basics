global _start
section .data
    addr db "yellow"
section .text
_start:
    mov [addr], byte 'H'    ; data is being moved into addr ("yellow"), in this case, 'H', or the byte representation of H into the address where addr is located. This move operation can be used for larger amounts of data. However, assembler needs to know how much data is being moved. addr points to the beginning of this string, which is where the H will be moved.
    mov [addr+5], byte '!'  ; This is an offset so that the data being appended to the string moves the exclamation to the end.
    mov eax, 4              ; sys_write system call
    mov ebx, 1              ; stdout file descriptor
    mov ecx, addr           ; bytes to write
    mov edx, 6              ; number of bytes to write
    int 0x80                ; perform system call
    mov eax, 1              ; sys_exit system call
    mov ebx, 0              ; exit status is 0
    int 0x80