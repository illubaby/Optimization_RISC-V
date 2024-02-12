
## Link for study: 
  - Chapter 5. RISC-V in Practice (https://learning.edx.org/course/course-v1:LinuxFoundationX+LFD110x+2T2022/block-v1:LinuxFoundationX+LFD110x+2T2022+type@sequential+block@4d06ddb3772f40f586a42d4d783b45e0/block-v1:LinuxFoundationX+LFD110x+2T2022+type@vertical+block@a35d9a66e4b24cb2b5de0ffa93940bf4) 
  - https://s.net.vn/4ShS
  
# Running 64- and 32-bit RISC-V Linux Binaries on QEMU

This README provides instructions on how to use QEMU user-level emulation to run 64-bit (RV64) and 32-bit (RV32) RISC-V Linux binaries, as well as how to compile and run a simple RISC-V assembly program.

## Prerequisites

To get started, you'll need to install the necessary packages:

```bash
sudo apt install qemu-user
sudo apt install gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu
```

# Compiling and Running a RISC-V Program
## Compile the RISC-V Assembly File
Create a file name rv-hello.s:
```
# Simple RISC-V Hello World

.global _start

_start: addi  a0, x0, 1
        la    a1, helloworld
        addi  a2, x0, 13
        addi  a7, x0, 64
        ecall

        addi    a0, x0, 0
        addi    a7, x0, 93
        ecall

.data
helloworld:      .ascii "Hello World!\n"

```
Use the following command to compile a RISC-V assembly file named rv-hello.s:
```bash
riscv64-linux-gnu-gcc -o rv-hello rv-hello.s -nostdlib -static
```
## Run the Compiled Program
After compiling, you can run the program with QEMU:
``` 
qemu-riscv64 ./rv-hello
```
# How to add an custom instruction in RISC-V architecture
[Custom instruction in the software toolchain](https://pcotret.gitlab.io/riscv-custom/sw_toolchain.html)
https://lijie.me/post/adding-custom-instructions-to-riscv-gnu-toolchain/
- Create opcode syntax for your custom instruction ( remember to avoid conflict)
- MATCH and MASK:  

  - Match Value: The match value is the specific pattern that you expect to find in the instruction's bits for it to be identified as a particular instruction.

  - Mask Value: The mask value is used to ignore certain bits in the instruction when matching.
- Modify the binutils (which is a collection of binary utility tools developed by the GNU project1)

# Some terms
- Domain-specific processors are specialized computing units designed to efficiently handle specific types of computational tasks or algorithms. Unlike general-purpose processors that can execute a wide range of instructions for various applications, domain-specific processors are optimized for a particular set of operations, which can include graphics processing, digital signal processing, artificial intelligence (AI) computations, and more. 