#include <stdio.h>

#define ARRAY_SIZE 10240000
#define STRIDE 64

/* 
This microbenchmark first creates a struct that is 64 bytes. From the config file, each line is 128 bytes and so each
entry in the microbenchmark is more than one line away from each other. Therefore, when running the next line prefetcher 
we will expect to see lackluster performance. However, for the stride prefetcher we expect to see near perfect performance
minus the setup misses.
*/

int main(){
    int a[ARRAY_SIZE];
    register int b = 1;
    register int i = 0;

    for (; i<ARRAY_SIZE; i+=STRIDE){
        a[i] = b;
    }

    return 0;
}