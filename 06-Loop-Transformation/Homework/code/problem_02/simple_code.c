#include<stdio.h>
#define MATRIX_SIZE 8

double a[MATRIX_SIZE][MATRIX_SIZE];
double b[MATRIX_SIZE][MATRIX_SIZE];

int main() {
    for (int i = 0; i < MATRIX_SIZE; i++) {
        for (int j = 0; j < MATRIX_SIZE; j++) {
            a[i][j] = b[i][j] + 2.5;
        }
    }
    return 0;
}