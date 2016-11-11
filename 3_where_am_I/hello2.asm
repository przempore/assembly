[bits 32]


call nast
nast:
pop eax
lea ebp, [eax+(dane-nast)]
; +++++++++++++++++++++++++++++++++++
; mov ebp, eax
; add ebp, dane-nast
; +++++++++++++++++++++++++++++++++++
; ebp --> dane:
; add eax, dane-nast
; push eax
; add dword [esp], dane-nast
; +++++++++++++++++++++++++++++++++++
push ebp
call [ebx+3*4]
add esp, 4

call [ebx]

dane:
db "hello world", 0xa, 0
