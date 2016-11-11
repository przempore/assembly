[bits 32]

call hello
db "hello world!", 0xa, 0
hello:
call [ebx+4*3]
add esp, 4

push 0
call [ebx]
