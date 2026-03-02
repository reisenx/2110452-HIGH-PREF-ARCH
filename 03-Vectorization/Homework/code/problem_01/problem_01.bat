REM COMPILE PROGRAM USING GCC COMPILER
gcc -O3 -fno-tree-vectorize no_avx.c -o no_avx.exe
gcc -O3 -mavx2 avx.c -o avx.exe

REM EXECUTE EXPERIMENT
no_avx.exe
avx.exe

PAUSE
