# ELEC2645 Unit 1.1 Activity 6 - Debug Practice

This program asks the user for an integer `n`, then calculates the sum and average of all the integers between 1 and `n`. The program should only accept numbers between 1 and 99.

However there are some problems in the code which mean it does not behave as expected, or even compile! Fix the code so it can compile, and then update the code so it behaves as expected and passes the tests

### 1 Run code
To compile the code use `gcc activity6_debug_practice.c -o activity6_debug_practice.out` and then `./activity6_debug_practice.out` to run the new program.
Optionally, you can add some extra compiler flags like `gcc -Wall -Wextra -Wpedantic activity6_debug_practice.c -o activity6_debug_practice.out` which make the compiler show warnings during compilation which may highlight code issues. This is good practice for anything beyond very simple programs.

### 2 The assignment

- Fix the immediate bugs in the code so the compilation works and `activity6_debug_practice.out` is generated.
- Check the behaviour of the program. Running the test script will give you hints as to the correct output
- Update the code so all test cases pass

### 3 Test command
In the terminal run `make test6` which will build `activity6_debug_practice.c` to create `activity6_debug_practice.out` if not done already, then run the test script `activity6_test.sh`. You can run the test script yourself using `./activity6_test.sh`
