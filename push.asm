push 1234
push 8765
push 246
sub esp, 4
mov [esp], dword 357 ; here we are utilizing the esp register directly so that the last push is re-written as subtract 4 from esp and then move 357 into the location that esp points to. The purpose of dword is to tell NASM that we're moving four bytes into this memory location.
                ; Memory Address values, stack pointer starts at a higher address, and moves down with pushes, and moves up with pops. When we push 1234, there is a decrease of 4, and the integer is pushed into the [24] address value. The stack is arranged in 4s, because each integer is 32 bits or 4 bytes, so every number being stored is 4 bytes long.
                ;[00]
                ;[04]
                ;[08]
                ;[12] 357
                ;[16] 246
                ;[20] 8765
                ;[24] 1234
                ;[28]