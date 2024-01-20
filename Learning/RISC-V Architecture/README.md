# Running 64- and 32-bit RISC-V Linux on QEMU

## Important Considerations for Bug Fixes:

### Build QEMU with the RISC-V Target:
cd qemu
git checkout v5.0.0
./configure --target-list=riscv64-softmmu
sudo make -j $(nproc)
sudo make install

### Build Linux for the RISC-V Target:
First, check out a desired version:
sudo apt-get install gcc-riscv64-linux-gnu
cd linux
git checkout v5.4-rc4
make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- defconfig
Then compile the kernel:
make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- -j $(nproc)

### Build Busybox:
cd busybox
CROSS_COMPILE=riscv64-linux-gnu- make defconfig
CROSS_COMPILE=riscv64-linux-gnu- make -j $(nproc)

### Resolving Compilation Errors:
If you encounter the following error:
usr/bin/ld: scripts/dtc/dtc-parser.tab.o:(.bss+0x10): multiple definition of 'yylloc'; scripts/dtc/dtc-lexer.lex.o:(.bss+0x0): first defined here
collect2: error: ld returned 1 exit status
Edit the file `riscv64-linux/linux/scripts/dtc/dtc-lexer-lex.c`. Find the line `YYLTYPE yylloc` and change it to `extern YYLTYPE yylloc`.
