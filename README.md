# Assembly Array Sum Bug

This repository demonstrates a common off-by-one error in assembly code that calculates the sum of an array's elements. The bug arises from an incorrect handling of loop iterations and array indexing, leading to either an incorrect sum or a segmentation fault.

## Bug Description

The `bug.asm` file contains assembly code that attempts to sum the elements of a word-sized array. However, it has a subtle error in its loop counter or array indexing that results in an incorrect calculation.  The error is related to the loop termination condition and how the array index is updated.

## Solution

The `bugSolution.asm` file provides a corrected version of the code that addresses the identified off-by-one error. The correction ensures that all elements of the array are correctly summed.

## How to Run

1. Assemble the code using NASM or a similar assembler: 
   ```bash
   nasm -f elf bug.asm -o bug.o
   ld -m elf_i386 bug.o -o bug
   ```

2. Run the executable: 
   ```bash
   ./bug
   ```