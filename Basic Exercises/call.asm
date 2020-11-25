global _start

_start:
    call func
    mov eax, 1 ; system exit call
    int 0x80

func:
    mov ebx, 42
    pop eax
    jmp eax

; a function in assembly is a chunk of code that we can jump to perform some operations and then jump back from where we came from, jump back to where we came from, and also reuse code, and interact bi-directionally with C code or other compiled languages. This means we'll be able to write functions for C using Assembly, and also be able to call functions written in C from Assembly.

; call - the first thing that call will do is push the instruction pointer on to the stack, technically it pushes the location of the next instruction on to the stack.  Next it jumps to the location that we specify this is going to be the location of the function that is being called. The combination of these two actions means that we can jump to somewhere else in the application, and then go back to the original point in the application. This is advantageous because the return location doesn't have to be hardcoded like it does with a jmp operand...and can be called from anywhere in your code. The return location is being pushed no to the stack, and you'll be able to jump back. 