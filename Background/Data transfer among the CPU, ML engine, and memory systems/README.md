### Link for study: 
- https://www.nature.com/articles/s44287-023-00002-9
- https://ar5iv.labs.arxiv.org/html/2305.05240

- https://riscv.org/wp-content/uploads/2018/05/15.20-15.55-18.05.06.VEXT-bcn-v1.pdf
### Keyword
- data flow in SoC
  
## Data communication between CPU and memory
Link:
- https://www.brainkart.com/article/Data-communication-between-CPU-and-memory_33643/
CPU has:
  - Memory Data Register (MDR): keeps the data transferred between Mem and CPU
  - Memory Address Register (MAR): store the memory address from which data will be fetched to the CPU registers, or the address to which data will be sent and stored via bus system
## Data communication between GPU and CPU
Link:
- https://youtu.be/RDUHsjJTGus
- https://youtu.be/Yv4thF9tvPo
Data transfer between CPU and GPU typically occurs over a bus like PCI Express (PCle). The PCle bus connects the GPU to the main memory of the computer
DRAM in CPU and Global Memory in GPU interacts with each other through the PCI bus
CUDA Program Flow : 
1. load the data in memory (in CPU )
2. Copy the data from CPU to GPU memory
3. Exercute GPU kernel
4. Copy result from GPU to CPU