section .data
    float1: dd 32.0
    float2: dd 5.0
    float3: dd 9.0

section .text
    global convert_f_to_c
    convert_f_to_c:
        movss   xmm1, dword[float1] ; move 32.0 in the xmm1 register
        subss   xmm0, xmm1          ; subtract xmm0 by 32

        movss   xmm1, dword[float2] ; move 5.0 in the xmm1 register
        mulss   xmm0, xmm1          ; multiply xmm0 and xmm1 register

        movss   xmm1, dword[float3] ; move 9.0 in the xmm1 register
        divss   xmm0, xmm1          ; divide xmm0 / xmm1
        
        ret
