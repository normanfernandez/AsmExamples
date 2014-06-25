CC=gcc
ASM=nasm -f elf32

default:
	$(ASM) ejemplos.asm
	$(CC) ejemplos.o -o pony

clean:
	rm pony
	rm *.o
