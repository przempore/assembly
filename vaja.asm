; ----------------------------------------------------------------------------------------
; To assemble:
; nasm -f elf32 vaja.asm
;
; Then can be user idaq:
;  ~/bin/idaq vaja.o
; ----------------------------------------------------------------------------------------

bits 32
extern printf
global main

section .data
    message db "Hello world!!", 10, 0

section .text

main:
    pushad 
    push dword message
    call printf 
    add esp, 4 
    popad 
    ret