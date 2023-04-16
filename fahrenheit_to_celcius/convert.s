.text
.global convert_f_to_c

convert_f_to_c:
    movl    $0, %edx

    movl    %edi, %esi # Fahrenheit value from omglulw c programm
    sub     $32, %esi # substract by 32
    
    movl    $5, %eax
    imul    %esi      # multiply with 5
    
    movl    $9, %esi
    idiv    %esi
    
    ret
