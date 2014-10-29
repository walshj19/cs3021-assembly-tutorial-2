CC=llvm-g++
ASM=/usr/local/Cellar/nasm/2.11.05/bin/nasm
BIN-DIR=bin
SRC-DIR=src
L-FLAGS= -Wl,-no_pie

all:
	${ASM} -f macho64 -o ${BIN-DIR}/asm.o ${SRC-DIR}/segment.asm
	${CC} -c ${SRC-DIR}/segment.hpp -o ${BIN-DIR}/segment.hpp.gch
	${CC} -c ${SRC-DIR}/test-suite.cpp -o ${BIN-DIR}/main.o
	${CC} ${L-FLAGS} -o ${BIN-DIR}/test-program ${BIN-DIR}/asm.o ${BIN-DIR}/main.o
