#include <stddef.h>
#include <stdint.h>
#include <stdio.h>


void add_scalar(const int32_t *a, const int32_t *b, int32_t *out, size_t n) {
    for (size_t i = 0; i < n; i++) {
        out[i] = a[i] + b[i];
    }
}


int main(void) {
    printf("Hello, World!\n");
}
