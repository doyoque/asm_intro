# HELLO WORLD FROM ASSEMBLY CODE

This is just a simple implementation of assembly code.

## Commonly command

For the sake of simplicity I use linux to working with this code.
And also you need to install `nasm`, a assembly compiler.

```bash
nasm -f elf hello.asm # for 32 bit file object
nasm -f elf64 hello.asm # for 64 bit file object
```

This command will create an object file with `.o` extension.
And if you want to get a executable file:

```bash
ld hello.o -o hello
```

This will generate a executable file so you can run this binary program like usual.

```bash
./hello
Hello world!
```

## Fun to know

This repo is still alive.
