[bits 32]

; ESP -> [RET]
mov ebp, esp
sub esp, 8

; ESP -> [a] [b] [RET]
;                ^
;               EBP
; b -> EBP-4
; a -> EBP-8
lea eax, [ebp-4]
push eax
lea eax, [ebp-8]
push eax
call do_scan
db "%i %i", 0
do_scan:
call [ebx+4*4] ; scanf
add esp, 12

mov eax, [ebp-8]
sub eax, [ebp-4]
push eax

jz write_0
js write_signed

push '>'
call [ebx+4]
jmp result

write_0:
push '='
call [ebx+4]
jmp result

write_signed:
push '<'
call [ebx+4]

result:
add esp, 4

call print_result
db "Result: %i", 0xa, 0
print_result:
call [ebx+3*4]
add esp, 8

push 0
call [ebx]
