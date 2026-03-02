#include<stdio.h>
#include<stdlib.h>
#include<time.h>

#define TEST_ITERATIONS 10
#define PROCESS_ITERATIONS 100
#define ARRAY_SIZE 6400000

void add(int *a, int *b);
double run_test();

int main() {
    printf("============ SCALAR RUNTIME ===========\n");
    for(int i = 1; i <= TEST_ITERATIONS; i++) {
        printf("TEST %d: %f s\n", i, run_test());
    }
    return 0;
}

void add(int *a, int *b) {
    for(int i = 0; i < ARRAY_SIZE; i++) {
        a[i] += b[i];
    }
}

double run_test() {
    // Allocated memory for array a and b.
    int *a = (int*)malloc(ARRAY_SIZE * sizeof(int));
    int *b = (int*)malloc(ARRAY_SIZE * sizeof(int));

    // Initialize value inside each array.
    for(int i = 0; i < ARRAY_SIZE; i++) {
        a[i] = i;
        b[i] = i;
    }

    // Run an experiment
    clock_t begin_time = clock();
    for(int i = 0; i < PROCESS_ITERATIONS; i++) {
        add(a, b);
    }
    clock_t end_time = clock();

    // Free allocated memory
    free(a);
    free(b);

    // Return executed time
    double run_time = ((double) end_time - begin_time) / CLOCKS_PER_SEC;
    return run_time;
}
