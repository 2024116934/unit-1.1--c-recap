// ELEC2645 Unit 1 - Activity 2 - Data Types
// Add the code to complete the steps below
// Keep the print statements as they are unless told to do so.
#include <stdio.h>
int main(void)
{
    int total = 0;
    float circumference = 0;
    float area = 0;
    const float PI = 3.1415926536f;
    // Step 1: Create two integers, a and b, which add up to 10.
    // Then set total = a + b.
    int a = 3;
    int b = 7;
    total = a + b;
    printf("%d\n", total);

    // Step 2: Calculate the circumference and area of a circle of radius 1.5.
    float radius = 1.5f;
    circumference = 2 * PI * radius;
    area = PI * radius * radius;
    printf("%f\n", circumference);
    printf("%f\n", area);

    // Step 3: Print the area with the unit metres.
    char unit = 'm'; // changed unit from 'f' to 'm' for metres
    printf("%f %c\n", area, unit);

    // Step 4: Print the line "Leeds! Leeds! Leeds!"
    printf("Leeds! Leeds! Leeds!\n");

    return 0;
}
