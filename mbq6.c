#define LOOP_SIZE 1000000000

int main() {
    int a[LOOP_SIZE];
    register int index = 0;
    int jumps[10] = {0, 0, 4, 0, 2};
    register int jump = 2;
    register int b;
    while (index < LOOP_SIZE) {
        b = a[index];
        a[index] = b+1;
        index += jump * 64;
        jump = jumps[jump];
    }
}
