; https://youtu.be/sS_1SyDqVV8?t=810 ;
; nasm command : nasm -f elf32 a32.asm -o a32
; ld -m elf_i386 a32.o -o a32 


bits 32

section .data
    message db 'Hello, World!', 10

section .text
    global _start
    _start:
        mov eax, 4
        mov ebx, 1
        mov ecx, message
        mov edx, 13+1
        int 0x80

        mov eax, 1
        mov ebx, 0
        int 0x80