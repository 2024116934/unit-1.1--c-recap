// ELEC2645 Unit 1 - Activity 4 - If Else 
// Add to the code to complete the steps below
// 
// Ask the user for an integer
// Use an if else statement to check if the number is even or odd
// Print out "The number is even" or "The number is odd" accordingly



#include <stdio.h>
int main() {
   int number; // variable to hold the user input
   printf("Please enter a number:\n");
   // Read user input
   scanf("%d", &number);

   // if-else to check even or odd
   if(number % 2 == 0)
   {
       printf("The number is even\n");
   }
   else
   {
       printf("The number is odd\n");
   }

   return 0; // return zero to indicate the program ran ok 
}
