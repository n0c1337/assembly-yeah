global convert_f_to_c
section .text
    convert_f_to_c:
        mov    rdx, 0

        mov    rsi, rdi ; Fahrenheit value from omglulw c programm
        sub    rsi, 32  ; substract by 32
        
        mov    rax, 5
        imul   rsi      ; multiply with 5

        mov    rsi, 9
        idiv   rsi      ; divide by 9
        
        ret
