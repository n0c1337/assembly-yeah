all:
	nasm -f elf64 arrays.s -o arrays.o
	gcc -no-pie main.c arrays.o -o main.out