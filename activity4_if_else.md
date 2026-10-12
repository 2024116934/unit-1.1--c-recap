# ELEC2645 Unit 1.1 Activity 4 If...Else

C uses comparison statements similar to those in maths e.g. `<` less than, `>=` greater than or equal to, `==` equals or `!=` not equal to.

A comparison _condition_ would be something like `x == y` which is either `true` or `false`. We can use these conditions to select which parts of the code are executed and to perform different actions. The there are most commonly found in `if` and `else` statements.

```c
if (condition) {
  // code which runs if condition is true
} else {
  // code which runs if condition is false
}
```

### 1 Run code

The program `activity4_if_else.c` needs compiling before it can run. In the terminal you can type `gcc activity4_if_else.c -o activity4_if_else.out` and then `./activity4_if_else.out` to run the new program

### 2 The assignment

Ask the user to enter a number, and then use an if else statement to return "The number is even" or "The number is odd". Please match the strings exactly, and make sure they are the final line printed to the terminal. Hint - use the modulus operator `%` to test if the number is even.

### 3 Test command

In the terminal run `make test4` which will build `activity4_if_else.c` to create `activity4_if_else.out` if not done already, then run the test script `activity4_test.sh`. You should see the message "All test passed :D" if your code is working.
