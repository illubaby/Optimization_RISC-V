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

Use the following command to compile a RISC-V assembly file named rv-hello.s:
```bash
riscv64-linux-gnu-gcc -o rv-hello rv-hello.s -nostdlib -static
```
## Run the Compiled Program
After compiling, you can run the program with QEMU:
``` 
qemu-riscv64 ./rv-hello
```
