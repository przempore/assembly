[bits 32]

call [ebx+2*4]

cmp eax, 'A'
jne dalej

call wypisz_hello
db 'hello world', 0xa, 0
wypisz_hello:
call [ebx+3*4]
add esp, 4

call [ebx]

dalej:
call wypisz_xyz
db 'xyz', 0xa, 0
wypisz_xyz:
call [ebx+3*4]
add esp, 4

call [ebx]