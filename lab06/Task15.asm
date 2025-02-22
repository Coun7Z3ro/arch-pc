%include 'in_out.asm'
SECTION .data
msg1: DB 'Выражение для вычисления (5+x)^2-3 ',0
msg2: DB 'Введите x: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, msg1
call sprintLF
mov eax, msg2
call sprintLF
mov ecx, x
mov edx, 80
call sread
mov eax,x
call atoi
add eax,5
mul eax
sub eax,3
call iprintLF
call quit
