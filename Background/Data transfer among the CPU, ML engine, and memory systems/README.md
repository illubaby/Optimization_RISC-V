### Link for study: 
- https://www.nature.com/articles/s44287-023-00002-9
- https://ar5iv.labs.arxiv.org/html/2305.05240

- https://riscv.org/wp-content/uploads/2018/05/15.20-15.55-18.05.06.VEXT-bcn-v1.pdf
### Keyword
- data flow in SoC
- In-Memory Vs. Near-Memory Computing
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
### PCI-E bottleneck when transferring data between CPU and GPU
Assuming a 3 GHz processor, it takes about 0.3ns to do an operation.

It takes 0.25ns for a bit to move down a 3 inch bus. Since each bit sent down the bus requires at least 1 cycle to send and 1 cycle to receive, a full bit transfer takes about 0.9ns. (This ignores quite a bit of additional overhead on messages which is capture by models like LogP.) Multiply this by 1MB and you get about 1ms for a data transfer. In the same time you were doing that transfer you could have done a million other operations. So physics says the bus is a fundamental limiter of performance.
## Data communication between GPU and memory
- https://developer.nvidia.com/blog/gpudirect-storage/

# Data Flow: 
In terms of data flow, data is fetched from memory by the processor or GPU, processed, and then written back to memory. If the data needs to be displayed (for example, in a graphics application), the GPU would handle rendering the data to a display interface:

Instruction Fetch: The process begins with the CPU fetching instructions from the memory.
Instruction Decode: The CPU decodes the fetched instruction to determine what operation needs to be performed.
Data Fetch: If the operation involves data stored in memory, the CPU fetches the required data.
Operation Execution: The CPU or GPU executes the operation. If the operation is related to graphics rendering or image calculations, it’s offloaded to the GPU. The GPU is specially designed to handle these operations efficiently.
Write Back: The result of the operation is written back to memory.
Display Rendering: If the result is to be displayed (for example, in a graphics application), the GPU handles rendering the data to a display interface.

## Solution :
- https://arxiv.org/pdf/2012.02825v1.pdf
Possible Future Work: You could focus on developing efficient data transfer protocols or algorithms that minimize latency and maximize throughput. You could also explore the design of memory architectures that are optimized for machine learning workloads.
- A reconfigurable coprocessor [18] based on the RISC-V ISA has been created to improve the processing efficiency of IoT CPUs. The developed coprocessor is connected with RISC-V and it becomes a separate entity that operates in parallel with the main CPU core and provides a flexible and scalable way to extend the functionality of CPU cores, allowing for optimized performance for specific  applications or workloads. By comparing the running cycles of the convolution, pooling, ReLU, and matrix addition algorithms on the coprocessor’s unique instruction set to the conventional RISC-V instruction set, the coprocessor’s performance is assessed.