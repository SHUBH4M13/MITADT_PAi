cd Desktop
nasm -f elf32/64 program.asm
ld - o program program.o
. /program
