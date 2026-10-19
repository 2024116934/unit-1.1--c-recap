// ELEC2645 Unit 1.2 Activity 5 - While Loops
// This program reads integers until 0 is entered and prints their sum

#include <stdio.h>
int main()
{
    int x;
    int sum = 0;
    int count = 0; // counter to track how many numbers we have entered
    
    // read the first number
    printf("Enter a number: ");
    scanf("%d", &x);
    
    // Use a while loop to read numbers until 0 is entered
    // or until ten numbers have been entered.
    while (x != 0 && count < 10)
    {
        sum = sum + x;
        count++;
        printf("Enter a number: ");
        scanf("%d", &x);
    }

    // Final output for the test script - do not change as ELEC2645 bot isnt smart enough ;)
    printf("\nSum = %d\n", sum);
    return 0;
}
