// ELEC2645 Unit 1 - Activity 3 - Loops
// Add to the code to complete the steps below

// Ask the user how many integers they want to enter
// Then calculate the sum
// Keep the printf at the end for the bot to check your code

#include <stdio.h>
// === Function prototypes (declarations) ===
// These need to be near the top so the compiler knows that the functions
// exist before they are called in main().
// void means "no parameters". It is good practice to state this explicitly.
void greet(void);
int square(int n);
int cube(int n);

int main(void) {
    greet();
    int x = 10;
    int y = square(x);
    int z = cube(x);
    int sum = x + y + z;
    // y = x^2, z = x^3, sum = x + y + z
    printf("y = %d, z = %d, sum = %d\n", y, z, sum);
    return 0;
}
// === Function definitions (can be in any order now) ===
// These contain the full code for each function.
// They must match the prototypes at the top.
int square(int n) {
    return n * n;
}

int cube(int n) {
    return n * n * n;
}

void greet(void) {
    printf("Hello!\n");
}

