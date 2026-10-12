#!/bin/bash
# ELEC2645 activity test

echo "#####################################"
echo "       d[o_0]b ELEC2645 Bot          "
echo "#####################################"
echo "Running tests..."
echo

output=$(./activity1_hello.out)
status=$?

if [ $status -ne 0 ]; then
    echo "Fail: Program crashed"
    exit 1
fi

echo "Checking output..."
if [ "$output" = "Hello, World" ]; then
    echo "Pass: Got 'Hello, World'"
    echo
    echo "#####################################"
    echo "     d[o_0]b All tests passed :D     "
    echo "#####################################"
    exit 0
else
    echo "Fail: Got '$output', Expected 'Hello, World'"
    echo
    echo "#####################################"
    echo "     d[o_0]b Some tests failed :(    "
    echo "#####################################"
    exit 1
fi
