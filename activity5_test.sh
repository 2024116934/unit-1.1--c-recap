#!/bin/bash
# Bash shell script to run tests. 
# Runs the test and then compares the output to what is expected
# Single .c file, which expects user inputs, and then prints a final output which is checked
# This tests multiple different inputs and outputs
#
# Note to students: You dont need to fully understand this! 


echo "#####################################"
echo "       d[o_0]b ELEC2645 Bot          "
echo "#####################################"
echo "Running tests..."
echo

echo "Checking for errors..."

# User input : Expected output of the *final* line of output
# Format is input\n:expected_output
cases=(
  $'3\n4\n5\n6\n0\n:Sum = 18' 
  $'1\n20\n20\n0\n:Sum = 41'
  $'4\n1\n2\n3\n4\n0\n:Sum = 14'
  $'1\n5\n0\n:Sum = 6'
  $'0\n:Sum = 0' # Added test case for immediate zero input
  $'1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n0\n:Sum = 10' # Check that the program stops after ten input numbers
)

failed=0

for case in "${cases[@]}"; do
  # split input and expected output
  input="${case%%:*}"
  expected="${case##*:}"

  # run program, capture stdout+stderr
  output=$(echo "$input" | ./activity5_while_loops.out 2>&1)
  status=$?

  # remove CRs that can break matching (Windows line endings)
  clean=$(printf '%s' "$output" | tr -d '\r')

  # get the final line of output
  #final_line=$(echo "$clean" | tail -n 1 | sed 's/^ *//;s/ *$//')
  final_line=$(echo "$clean" | awk 'NF' | tail -n 1 | sed 's/^ *//;s/ *$//')
  

  if [ $status -ne 0 ]; then
    echo "Fail: crashed (exit $status) for input -> $(echo "$input" | tr '\n' ' ')"
    echo "  Raw output: $clean"
    failed=1
    continue
  fi

  if [ "$final_line" = "$expected" ]; then
    echo "Pass: $(echo "$input" | tr '\n' ' ') => $final_line"
  else
    echo "Fail: $(echo "$input" | tr '\n' ' ')"
    echo "  Got:      $final_line"
    echo "  Expected: $expected"
    echo "  Raw output: $clean"
    failed=1
  fi
done

echo
if [ $failed -eq 0 ]; then
  echo "#####################################"
  echo "     d[o_0]b All tests passed :D    "
  echo "#####################################"
  exit 0
else
  echo "#####################################"
  echo "     d[o_0]b Some tests failed :(   "
  echo "#####################################"
  exit 1
fi
