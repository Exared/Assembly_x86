.global main

.text

error:
mov $1, %rax
ret

step1:
mov %rsi, %rdi
mov $openargs, %rsi
call open
mov %rax, %rdi
mov %r10, %rsi
mov $1, %rdx
ret

main:
cmp $2, %rdi
jne error
jmp step1
mov $0, %rax
ret


openargs:
   .asciz "wr"