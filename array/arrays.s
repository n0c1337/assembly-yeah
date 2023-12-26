section .data
    my_array TIMES 16 DD 0

section .text
extern malloc
global modify_array
global heap_array

modify_array:
    mov rcx, 0
.loop:
    mov [my_array + rcx * 4], rcx
    add rcx, 1
    cmp rcx, 4
    jl .loop

    mov rax, my_array

    ret

heap_array:
    mov edi, 40
    call malloc
    mov rcx, 0
.loop:
    mov [rax + rcx * 4], rcx
    add rcx, 1
    cmp rcx, 4
    jl .loop
    ret