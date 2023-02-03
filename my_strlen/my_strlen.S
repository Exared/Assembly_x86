.global my_strlen

end:
    ret


loop:
    cmpb $0, (%r10)
    je   end
    incq %rax
    incq %r10
    jmp loop


my_strlen:
    movq %rdi, %r10
    movq $0, %rax
    jmp  loop

