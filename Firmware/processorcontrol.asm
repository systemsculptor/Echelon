# RISC-V Assembly Code for Processor Control

# Define constants
.data
result:
    .word 0          # Memory location to store the result

# Code section
.text
.globl _start
_start:

    # Initialize registers with values
    li x1, 10         # Load value 10 into register x1
    li x2, 5          # Load value 5 into register x2

    # Perform arithmetic operation: x1 = x1 + x2
    add x1, x1, x2    # Add contents of x2 to x1

    # Store result in memory
    sw x1, result     # Store the result in memory location 'result'

    # End of program
    li a7, 10         # Load exit syscall number into a7
    ecall             # Execute syscall to exit program