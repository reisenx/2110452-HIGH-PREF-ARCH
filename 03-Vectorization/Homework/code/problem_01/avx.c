#include<stdio.h>
#include<stdlib.h>
#include<immintrin.h>
#include<time.h>

#define TEST_ITERATIONS 10
#define PROCESS_ITERATIONS 100
#define ARRAY_SIZE 6400000

void add_avx(int *a, int *b);
double run_test_avx();

int main() {
    printf("============ VECTORIZE RUNTIME ===========\n");
    for(int i = 1; i <= TEST_ITERATIONS; i++) {
        printf("TEST %d: %f s\n", i, run_test_avx());
    }
    return 0;
}

void add_avx(int *a, int *b) {
    int i = 0;
    for(; i < ARRAY_SIZE; i += 8) {
        // Load 256 bits chunks of each array.
        __m256i av = _mm256_loadu_si256((__m256i*) &a[i]);
        __m256i bv = _mm256_loadu_si256((__m256i*) &b[i]);

        // Add each pair of 32 bits integers in chunks.
        av = _mm256_add_epi32(av, bv);

        // Store 256 bits chunks to variable a.
        _mm256_storeu_si256((__m256i*) &a[i], av);
    }

    // Clean up leftovers
    for(; i < ARRAY_SIZE; i++) {
        a[i] += b[i];
    }
}

double run_test_avx() {
    // Allocated memory for array a and b.
    int *a = (int*)malloc(ARRAY_SIZE * sizeof(int));
    int *b = (int*)malloc(ARRAY_SIZE * sizeof(int));

    // Initialize value inside each array.
    for(int i = 0; i < ARRAY_SIZE; i++) {
        a[i] = i;
        b[i] = i;
    }

    // Run experiment
    clock_t begin_time = clock();
    for(int i = 0; i < PROCESS_ITERATIONS; i++) {
        add_avx(a, b);
    }
    clock_t end_time = clock();

    // Free allocated memory
    free(a);
    free(b);

    // Return executed time
    double run_time = ((double) end_time - begin_time) / CLOCKS_PER_SEC;
    return run_time;
}
