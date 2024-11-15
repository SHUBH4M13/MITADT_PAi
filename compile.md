cd Desktop <br>
nasm -f elf32/64 program.asm <br>
ld -o program program.o <br>
. /program <br>

 <br> else try <br>

cd Desktop <br>
nasm -f elf32 program.asm -o program.o <br>


ld -m elf_i386 -s -o program program.o <br> 


./program  <br>
