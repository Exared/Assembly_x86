.global my_strcpy
    
    .text

end:
movb $0, (%rdi)
ret

loop:
cmpb $0, (%rsi)
je end
movb  (%rsi), %r10b
movb %r10b, (%rdi)
addq $1, %rsi
addq $1, %rdi
jmp loop

my_strcpy:
mov %rdi, %rax
cmpb $0, (%rsi)
jne loop
movb $0, (%rdi)
ret