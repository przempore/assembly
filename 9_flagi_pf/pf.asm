[bits 32]


mov ebp, esp
sub esp, 4
; ESP -----> zmienna a

lea eax, [ebp-4]
push eax
call do_scanf
db "%i", 0
do_scanf:
call [ebx+4*4] ; scanf
add esp, 8

mov eax, [ebp-4] ; eax = a
test eax, eax

jp print_even

call skip_odd
db "Nieparzysta ilosc bitow", 0xa, 0
skip_odd:
jmp print

print_even:
call print
db "Parzysta ilosc bitow", 0xa, 0

print:
call [ebx+3*4] ; printf
add esp, 4

push 0
call [ebx] ; exit(0)
