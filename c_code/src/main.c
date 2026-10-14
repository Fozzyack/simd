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
  for (; n - i >= 8; i += 8) {
    __m256i va = _mm256_loadu_si256((const __m256i *)(a + i));
    __m256i vb = _mm256_loadu_si256((const __m256i *)(b + i));
    __m256i sum = _mm256_add_epi32(va, vb);

    _mm256_storeu_si256((__m256i *)(out + i), sum);
  }

  for (; i < n; i++) {
    out[i] = a[i] + b[i];
  }
}

int main(void) {
  enum { N = 19 };
  int32_t a[N], b[N], scalar[N], simd[N];

  for (size_t i = 0; i < N; i++) {
    a[i] = (int32_t)i;
    b[i] = (int32_t)(2 * i);
  }

  add_scalar(a, b, scalar, N);
  add_simd(a, b, simd, N);

  for (size_t i = 0; i < N; i++) {
    if (scalar[i] != simd[i]) {
      fprintf(stderr, "Mismatch at index %zu\n", i);
      return 1;
    }
    printf("%zu: %d + %d = %d\n", i, (int)a[i], (int)b[i],
           (int)simd[i]);
  }

  puts("Scalar and SIMD results match.");
  return 0;
}
