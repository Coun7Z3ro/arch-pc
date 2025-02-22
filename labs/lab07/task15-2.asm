%include 'in_out.asm'
section .data
msg1 db "Введите X: ",0h
msg2 db "Введите A: ",0h
msg3 db "f(x) = ",0h
section .bss
x: RESB 80
a: RESB 80
ans: RESB 80
section .text
global _start
_start:
mov eax,msg1
call sprint
mov ecx,x
mov edx,80
call sread
mov eax,x
call atoi
mov [x],eax

mov eax,msg2
call sprint
mov ecx,a
mov edx,80
call sread
mov eax,a
call atoi
mov [a],eax

mov eax,[x]
mov ecx,[a]
cmp ecx,eax
jl _xmor

mov eax,[a]
add eax,10
jmp _ans

_xmor:

add eax,10

_ans:
mov [ans],eax
mov eax,msg3
call sprint
mov eax,[ans]
call iprintLF
call quit
