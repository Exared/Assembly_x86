.global reverse_print

    .text

loop:
cmp      %r13, %r14
je      end
dec     %r14
movb    (%r14), %dil
call putchar
call loop

end:
xor %rax, %rax
ret

reverse_print:
    movq    %rdi, %r13
    movq    %rdi, %r14
    call    strlen
    add    %rax, %r14
    jmp     loop

