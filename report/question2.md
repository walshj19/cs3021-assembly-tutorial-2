CS3021 Computer Architecture Tutorial 2
====================

Question 2
---------------------

The function f(n) calculates n factorial.

###State of the Stack after a call to f(13)

Stack							|bottom of stack
------------------|------------------
return address		|caller
empty							|shadow space f(13)
empty							|shadow space f(13)
empty							|shadow space f(13)
saved (n=13)			|shadow space f(13)
return address		|f(13)
empty							|shadow space f(12)
empty							|shadow space f(12)
empty							|shadow space f(12)
saved (n=12)			|shadow space f(12)
return address		|f(12)
empty							|shadow space f(11)
empty							|shadow space f(11)
empty							|shadow space f(11)
saved (n=11)			|shadow space f(11)
return address		|f(11)
empty							|shadow space f(10)
empty							|shadow space f(10)
empty							|shadow space f(10)
saved (n=10)			|shadow space f(10)

Question 3
---------------------

This is the terminal output when compiling and running the program.

```
tutorial2$ make
/usr/local/Cellar/nasm/2.11.05/bin/nasm -f macho64 -o bin/asm.o src/segment.asm
llvm-g++ -c src/segment.hpp -o bin/segment.hpp.gch
llvm-g++ -c src/test-suite.cpp -o bin/main.o
llvm-g++ -Wl,-no_pie -o bin/test-program bin/asm.o bin/main.o
tutorial2$ ./bin/test-program
p test : pass
q test : pass
f test : pass
tutorial2$
```
