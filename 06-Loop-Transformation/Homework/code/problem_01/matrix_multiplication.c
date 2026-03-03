#include<stdio.h>
#define MATRIX_SIZE 8

int a[MATRIX_SIZE][MATRIX_SIZE];
int b[MATRIX_SIZE][MATRIX_SIZE];
int c[MATRIX_SIZE][MATRIX_SIZE];

int main() {
    for (int i = 0; i < MATRIX_SIZE; i++) {
        for (int j = 0; j < MATRIX_SIZE; j++) {
            c[i][j] = 0;
            for (int k = 0; k < MATRIX_SIZE; k++) {
                c[i][j] += a[i][k] * b[k][j];
            }
        }
    }
    return 0;
}
