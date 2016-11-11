[bits 32]

int3

mov eax, 0x12345678
xor eax, 0x7863412
push eax
call wypisz
db "%.8x", 0xa, 0
wypisz:
call [ebx+3*4]
add esp, 8

push 0
call [ebx]