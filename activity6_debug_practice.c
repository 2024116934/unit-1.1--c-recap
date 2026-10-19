/*
 * ELEC2645 Unit 1.2 Activity 6 - Debug Practice
 * This program prompts the user to enter an integer less than 100.
 * It then calculates and displays the sum and average of all integers from 1 up to the entered number.
 * If the user enters a number 100 or greater, it asks for a smaller number.
 */

#include <stdio.h>
int main() {
   int n =0;
   int sum =0;
   float ave = 0.0;

   // prompt user for input integer
   printf("Enter a number :");
   scanf("%d",&n);

   // keep asking until n <100 and >0
   while(n >= 100 || n <= 0)
   {
       printf("\nEnter a number between 1 and 99\n");
       printf("Enter a number :");
       scanf("%d",&n);
   }

   // loop from 1 to n, adding each value to sum and printing value
   printf("Numbers in sequence :");
   for (int i=1 ;i <= n; i++)
   {
      sum = sum + i;  // added missing semicolon
      printf("%d ",i);
   }
   //calculate average - cast sum to float to avoid integer division
   ave = (float) sum / n;  // fixed variable name: ave (not average)
   printf("\nSum : %d, Ave : %f\n",sum,ave); // %d for integer sum

   return 0;
}

