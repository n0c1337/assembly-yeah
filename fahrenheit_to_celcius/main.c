#include <stdio.h>

extern int convert_f_to_c(int fahrenheit);

int main() 
{
    float a = convert_f_to_c(80);
    printf("%f\n", a);

    return 0;
}
