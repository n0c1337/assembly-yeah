#include <stdio.h>

extern convert_f_to_c(int fahrenheit);

int main() 
{
    float a = convert_f_to_c(30);
    printf("%f\n", a);

    return 0;
}