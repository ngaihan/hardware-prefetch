#include <stdio.h>

#define ARRAY_SIZE 1024000

/* 
This microbenchmark creates an array where each of the elements will be accessed in order. This is a test of spatial
locality. The next line prefetcher as per the name will fetch the next line/block of data whenever something is accessed.
So we will expect to see the miss rate of this particular benchmark to near 0 as the array size increases. It will not
be perfect due to setup.
*/

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