REM COMPILE PROGRAM USING GCC COMPILER WITH DIFFERENT OPTIMIZATION LEVEL
gcc -O0 -S simple_code.c -o simple_code_o0.asm
gcc -O1 -S simple_code.c -o simple_code_o1.asm
gcc -O2 -S simple_code.c -o simple_code_o2.asm
gcc -O3 -S simple_code.c -o simple_code_o3.asm

PAUSE
