# Makefile for building and testing all six activities.
# Run "make test" to see the available tests.
# Run "make test1", "make test2", and so on to build and test an activity.
# Run "make clean" to delete all compiled .out files.
#
# The programs are compiled with debugging information so they can also be
# run using the Run and Debug panel in VS Code.
#
# Note to students: You do not need to fully understand this!

CC := gcc
CFLAGS := -Wall -Wextra -Wpedantic -std=c11 -g -O0

.PHONY: test test1 test2 test3 test4 test5 test6 clean

test:
	@echo "Choose an activity test:"
	@echo "  make test1  Activity 1: Hello World"
	@echo "  make test2  Activity 2: Data Types"
	@echo "  make test3  Activity 3: Loops"
	@echo "  make test4  Activity 4: If...Else"
	@echo "  make test5  Activity 5: While Loops"
	@echo "  make test6  Activity 6: Debug Practice"

test1: activity1_hello.out
	@bash activity1_test.sh

test2: activity2_data_types.out
	@bash activity2_test.sh

test3: activity3_loops.out
	@bash activity3_test.sh

test4: activity4_if_else.out
	@bash activity4_test.sh

test5: activity5_while_loops.out
	@bash activity5_test.sh

test6: activity6_debug_practice.out
	@bash activity6_test.sh

activity1_hello.out: activity1_hello.c
	$(CC) $(CFLAGS) $< -o $@

activity2_data_types.out: activity2_data_types.c
	$(CC) $(CFLAGS) $< -o $@

activity3_loops.out: activity3_loops.c
	$(CC) $(CFLAGS) $< -o $@

activity4_if_else.out: activity4_if_else.c
	$(CC) $(CFLAGS) $< -o $@

activity5_while_loops.out: activity5_while_loops.c
	$(CC) $(CFLAGS) $< -o $@

activity6_debug_practice.out: activity6_debug_practice.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f *.out
