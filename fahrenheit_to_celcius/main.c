#include <stdio.h>

extern float convert_f_to_c(float fahrenheit);

int main() 
{
    float a = convert_f_to_c(80);
    printf("%f\n", a);

    return 0;
}
