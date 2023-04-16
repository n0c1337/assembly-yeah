.text

.global convert_f_to_c

convert_f_to_c:
    movl    $0, %edx
    movl    $0, %esi
    movl    $0, %eax

    movl    %edi, %esi # Fahrenheit value from omglulw c programm
    sub     $32, %esi # substract by 32
    
    movl    $5, %eax
    mul     %esi      # multiply with 5
    movl    %eax, %esi

    movl    $9, %eax
    div     %esi      # divide by 9
    movl    %eax, %esi
    
    ret
