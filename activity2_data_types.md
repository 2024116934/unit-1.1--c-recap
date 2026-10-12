# ELEC2645 Unit 1.1 Activity 2 - Data Types

C has a few basic data types for storing variables, including:

- `int` for storing whole numbers. It can be 2 or 4 bytes of memory. Use `%i` or `%d` in `printf()`.
- `float` for storing decimal numbers. It is normally 4 bytes. Use `%f` in `printf()`.
- `double` for storing decimal numbers with higher precision. It is normally 8 bytes. Use `%f` in `printf()`.
- `char` for storing a *single* character, such as `'x'`, `'y'` or `'z'`. It is 1 byte. Use `%c` in `printf()`.

Strings are handled a bit differently, and we will go into more detail later in the course. For now, all we need to know is that they can be printed directly:

```c
printf("Test");
```

or by using the `%s` format specifier:

```c
printf("%s", "Test");
```

We can print multiple variables in the same statement:

```c
int i = 9;
float j = 1.337f;
printf("i is %d and j is %f\n", i, j);
```

This gives:

```text
i is 9 and j is 1.337000
```

The exact size of types such as `int` can depend on the compiler and processor. In embedded systems, we often use fixed-width integer types when the number of bits matters. We will introduce these later in the course!

### 1 Run code

Compile and run the program using:

```bash
gcc activity2_data_types.c -o activity2_data_types.out
./activity2_data_types.out
```

The program outputs multiple lines through `printf()` statements.

### 2 The assignment

Run `make test2` and check the output. Although the starter code compiles, the tests fail because it prints incorrect values and one line is missing. Complete each step in `activity2_data_types.c` to produce the expected output.

### 3 Test command

Run:

```bash
make test2
```

This builds `activity2_data_types.c`, creates `activity2_data_types.out`, and runs `activity2_test.sh`. If you complete the activity correctly, `d[o_0]b ELEC2645 Bot` will report that all tests passed.
