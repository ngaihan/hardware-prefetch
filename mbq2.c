#include <stdio.h>

#define ARRAY_SIZE 1024000

struct entry_block{
    unsigned int a; // 4 bytes
    char b[124]; // 124 bytes
};

/* 
This microbenchmark first creates a struct that is 64 bytes. From the config file, each line is 128 bytes and so each
entry in the microbenchmark is more than one line away from each other. Therefore, when running the next line prefetcher 
we will expect to see lackluster performance. However, for the stride prefetcher we expect to see near perfect performance
minus the setup misses.
*/

struct entry_block* init_entry_array(){
    struct entry_block* entry_array = calloc(ARRAY_SIZE, sizeof(struct entry_block));

    int i = 0;
    for (; i<ARRAY_SIZE; i++) {
        entry_array[i].a = 0;
    }
    return entry_array;
}

int main(){
    struct entry_block* entry_array = init_entry_array();
    register int b;
    int i = 0;

    for (; i<ARRAY_SIZE; i++){
        b = entry_array[i].a;
        entry_array[i].a = b + 1;
    }

    return 0;
}