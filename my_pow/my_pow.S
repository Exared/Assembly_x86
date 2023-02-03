.global my_pow

    .text

end:
    ret

loop:
    movq %rax, %rsi
    movq $format, %rdi
    push %rsi
    push %rdi
    push %r10
    push %r11
    push %rax
    call printf
    pop %rax
    pop %r11
    pop %r10
    pop %rdi
    pop %rsi
    add %r10, %rax
    movq %rax, %r10
    dec %r11
    cmp $0, %r11
    je end
    jmp loop


my_pow:
    mov $1, %rax
    mov $1, %r10
    mov %rdi, %r11
    add $1, %r11
    cmp $0, %r11
    jnle loop
    ret

format:
   .asciz "%d\n"