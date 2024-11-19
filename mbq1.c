#include <stdio.h>

#define ARRAY_SIZE 1024000

int main(){
    register int a[ARRAY_SIZE] = {0};
    register int b;
    int i = 0;

    for (; i<ARRAY_SIZE; i++){
        b = a[i];
        a[i] = b + 1;
    }

    return 0;
}