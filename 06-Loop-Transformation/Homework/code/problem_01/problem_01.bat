REM COMPILE PROGRAM USING GCC COMPILER WITH DIFFERENT OPTIMIZATION LEVEL
gcc -O0 -S matrix_multiplication.c -o matrix_multiplication_o0.asm
gcc -O1 -S matrix_multiplication.c -o matrix_multiplication_o1.asm
gcc -O2 -S matrix_multiplication.c -o matrix_multiplication_o2.asm
gcc -O3 -S matrix_multiplication.c -o matrix_multiplication_o3.asm

PAUSE
