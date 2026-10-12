# ELEC2645 Unit 1.1 Activity 5 - While loops
While loops let you repeat code until a condition is false. They are useful when you don't know in advance how many times the loop should run.

Syntax:
```c
    while (condition) {
        // code that runs while condition is true
    }
```

The condition is checked before each iteration. If it's false at the start, the loop won't run at all. If you want a loop that _always_ runs at least once you can adjust the condition, or use a `Do/While` loop instead.

**Important** The compiler does not check if you made a program that runs forever! If you accidentally do an infinite `while (1)` loop you can stop the program by hitting `ctr+c`. 

### Assignment
 
Write a program that:
- asks the user to enter numbers one at a time;
- adds each number to a running total;
- stops when the user enters `0` or when ten numbers have been entered;
- prints the sum of the entered numbers.
 
The `0` tells the program to stop and should not be included in the sum.
 
You will need a `while` loop with two conditions:
 
1. the number entered is not `0`;
2. fewer than ten numbers have been entered.
 
**Hint:** Create a counter variable and increase it each time a number is added.

### Compiling:
    `gcc activity5_while_loops.c -o activity5_while_loops.out`

### Running:
    `./activity5_while_loops.out`

### Testing:
Run the test script:
    `make test5`

This will compile the program and run `activity5_test.sh` to check your output.
