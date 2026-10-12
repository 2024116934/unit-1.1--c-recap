# ELEC2645 Unit 1.1 Activity 1 - Hello World!

A classic since it was introduced in *The C Programming Language* in 1978, we will be running our first C program to make sure we can edit files, compile, and run our code properly.

### 1 Run code

The program `activity1_hello.c` needs compiling before it can run. In the terminal, type:

```bash
gcc activity1_hello.c -o activity1_hello.out
```
gcc is the GNU C Compiler, we give it the `.c` source file and the `-o` option tells it to create an output file called `activity1_hello.out`.

Then run it with:

```bash
./activity1_hello.out
```

You can see the output in the terminal.

### 2 Test the output

Activate `d[o_0]b ELEC2645 Bot` by running:

```bash
make test1
```

This compiles `activity1_hello.c`, creates `activity1_hello.out`, and runs `activity1_test.sh`. The test initially fails.

### 3 The assignment

The test fails because the program prints the wrong string. It should print:

```text
Hello, World
```

Update the string in the `printf()` statement to make the test pass. The next activities will be more complicated than this one, I promise!
