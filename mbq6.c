#define LOOP_SIZE 1000000000

int main()
{
    // initialize array
    int a[LOOP_SIZE];
    // initial index is 0
    register int index = 0;
    // jumps array is used to determine the next jump value
    // this will ensure that jump oscillates between 2 and 4
    // this means that stride prefetcher should fail to fetch the correct data
    int jumps[10] = {0, 0, 4, 0, 2};
    // this is how much index will be incremented by
    register int jump = 2;
    // b
    register int b;
    while (index < LOOP_SIZE)
    {
        // access a at index
        b = a[index];
        a[index] = b + 1;
        // this ensures that the next index will be outside of the next block
        // this ensures that nextline prefetcher will fail to get the correct data
        index += jump * 64;
        // get the next jump value
        jump = jumps[jump];
    }
}
