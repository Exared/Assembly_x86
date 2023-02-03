.global my_add

    .text

my_add:
    mov $0, %rax
    mov %rdi, %rax
    addq %rsi, %rax
    ret