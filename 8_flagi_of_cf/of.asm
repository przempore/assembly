[bits 32]

mov ebp, esp
sub esp, 8

lea eax, [ebp-4]
push eax
lea eax, [ebp-8]
push eax

call fmt_scanf
db "%i %i", 0
fmt_scanf:
call [ebx+4*4]
add esp, 12

mov eax, [ebp-8]
add eax, [ebp-4]
jo print_overflow
call str_not_of
db "Nie bylo overflow", 0xa, 0
str_not_of:
jmp print

print_overflow:
call print
db "OVERFLOW!!!", 0xa, 0

print:
call [ebx+3*4]
add esp, 4

push 0
call [ebx]