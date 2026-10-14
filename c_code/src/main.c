#include <immintrin.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

void add_scalar(const int32_t *a, const int32_t *b, int32_t *out, size_t n) {
  for (size_t i = 0; i < n; i++) {
    out[i] = a[i] + b[i];
  }
}

void add_simd(const int32_t *a, const int32_t *b, int32_t *out, size_t n) {
  size_t i = 0;
  for (; i <= n; i += 8) {
    __m256i va = _mm256_loadu_si256((const __m256i *)(a + i));
    __m256i vb = _mm256_loadu_si256((const __m256i *)(b + i));
    __m256i sum = _mm256_add_epi32(va, vb);

    _mm256_storeu_si256((__m256i *)(out + i), sum);
  }

  for (; i < n; i++) {
    out[i] = a[i] + b[i];
  }
}

int main(void) {}
