#include <stdio.h>
#include <stdlib.h>

extern int* modify_array(void);
extern int* heap_array(void);

int main() {
   int* a = modify_array();
   
   for (int i = 0; i < 4; i++) {
        printf("%d\n", a[i]);
   } 

   int* h = heap_array();

   for (int i = 0; i < 4; i++) {
      printf("%d\n", h[i]);
   }

   free(h);
}