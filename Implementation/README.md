# Data Mobility Optimization
Develop Data Mobility Solutions: Enhancing the data transfer efficiency between CPU, ML engine, and memory.
### General Reference 
- https://www.embecosm.com/2021/04/07/the-ai-vector-accelerator-accelerating-risc-v-for-ai-ml-applications/ 
- https://www.sifive.com/blog/part-3-high-bandwidth-accelerator-access-to-memory-enabling-optimized-data-transfers-with-risc-v
  
# Optimizations:
### General
- Cache Coherence: Use cache-coherent RISC-V cores to ensure consistent data across multiple processors, crucial for parallel processing in AI and ML.

- Vector extensions: Utilize RISC-V vector extensions like SIMD (Single Instruction, Multiple Data) to parallelize data manipulations in AI and AR/VR.

- Memory hierarchy: Design a layered memory hierarchy with caches, DRAM, and potentially non-volatile memory (NVM) for efficient data access based on application needs (e.g., low latency for AR/VR vs. high bandwidth for IoT).

### AI/ML Applications:
Use RISC-V’s Vector Extension (RVV): The RVV provides support for vector operations, which are crucial for AI/ML workloads. You can use libraries that take advantage of these extensions to optimize your AI/ML applications.
- https://github.com/brucehoult/rvv_example
- https://www.youtube.com/watch?v=Up6Ff3WBFRg

Customize RISC-V Processors: Use application-specific RISC-V processors with customization tools for high-end graphics rendering, which is crucial for AI/ML applications.
- Dowload and use Codasip
- https://semiengineering.com/customizing-an-existing-risc-v-processor/

Hardware accelerators: Utilize RISC-V compatible hardware accelerators like GPUs or NPUs for offloading computationally intensive tasks, freeing up the main processor for other operations.
Data compression: Implement lightweight data compression techniques on-chip to reduce memory bandwidth requirements in data-intensive AI applications.
### IoT Applications:

Design a RISC-V SoC Architecture: Tailor your RISC-V SoC architecture towards IoT applications. This could involve optimizing for low power consumption, small footprint, and real-time processing.
- https://www.linkedin.com/pulse/how-build-risc-v-cpu-custom-instructions-steve-hoover-g4jjc/
- https://www.design-reuse.com/articles/48725/creating-domain-specific-processors-using-custom-risc-v-isa-instructions.html
- https://medium.com/programmatic/how-to-design-a-risc-v-processor-12388e1163c
- https://youtu.be/TrTp572FgFo
- https://www.mdpi.com/1999-5903/15/5/186

Low-power RISC-V cores: Choose low-power RISC-V cores for battery-powered IoT devices to optimize energy consumption while processing sensor data.

Real-time processing: Prioritize real-time data processing with efficient cache management and interrupt handling to ensure timely responses in time-sensitive IoT applications.

Implement Security Features: Implement security-sensitive edge computational operations while targeting a small-footprint implementation of security features over performance.

### AR/VR Applications:

Use High-End Graphics Rendering: Use application-specific RISC-V processors with customization tools for high-end graphics rendering, which is crucial for AR/VR applications.

High-bandwidth memory: Utilize high-bandwidth memory interfaces like LPDDR5 or HBM2e to handle the massive data streams required for rendering complex AR/VR environments.

Predictable memory access: Ensure predictable memory access times through techniques like real-time cache management and memory prioritization to avoid visual stutters and latency issues in AR/VR applications.

Specialized instructions: Explore custom instructions or dedicated hardware for real-time image processing and 3D graphics rendering to improve AR/VR performance.

### Optimizing Data Mobility:
Use DMA Engines: Use Direct Memory Access (DMA) engines for high-bandwidth data transfers between a Domain-Specific Accelerator (DSA) and memory. This can help in reducing the latency and improving the overall system performance.
- https://ieeexplore.ieee.org/document/8667579
- https://www.andestech.com/wp-content/uploads/Andes-Software-Solutions-for-RISC-V.pdf (This software provides solutions for RISC-V, including DMA Engine and other features. It also provides an extensive software stack from bare metal, RTOS to Linux.)
- https://www.microcontrollertips.com/memory-disk-drives-memory-fabrics-and-risc-v-faq/
 #### Method 1: Neural CPU (NCPU) (ref:NCPU.pdf) (Phúc)
The
proposed architecture is built on a binary neural network
accelerator with the capability to emulate an in-order RISC-V
CPU pipeline. The NCPU supports flexible programmability of
RISC-V and maintains data locally to avoid costly core-to-core
data transfer. -> (2 mode on one NCPU : CPU for general purpose and binary neural network accelerator). 
- Idea:
  - Leverage the existing logic and
memories inside a neural network accelerator to recover the
capability of conventional CPU pipeline operations. As a result,
a NCPU core supports both ML inference and general-purpose
CPU computing with efficiency similar to the respective
architectures.
  - The proposed NCPU architecture is designed to fully
support the 32-bit RISC-V Base ISA. A customized RISC-V
instruction set extension is developed to incorporate BNN
operations, data transferring and mode switching.
  - A special zero-latency transition scheme is developed to
support seamless switching between CPU and BNN modes by
essentially pipelining the reconfiguration. Data can remain in
place while the core is reconfiguring thereby eliminating
transfer between CPU and accelerator.
#### Method 2: EXTREM-EDGE—EXtensions To RISC-V for Energy-efficient ML inference at the EDGE of IoT (KIệt)
The article presents EXTREM-EDGE, a co-design methodology for enhancing RISC-V ISA with custom AI instructions and hardware accelerators, aimed at improving performance and energy efficiency for AI applications at the IoT edge.

- EXTREM-EDGE presents a modular design for RISC-V processors, integrating AI Functional Units (AFUs) within the CPU pipeline, rather than as separate co-processors. This design facilitates efficient execution of AI tasks in conjunction with standard processing by leveraging specialized instructions for AI operations like vector-matrix multiplication. 
- EXTREM-EDGE introduces AI-specific instruction set architecture (ISA) extensions for RISC-V and an accompanying software development kit (SDK). These extensions are categorized into 'Top-down' for AI algorithm acceleration and 'Bottom-up' to support AFU integration within the processor pipeline. The extensions enable fine-grained task offloading to AFUs, ensuring both AI and non-AI workloads can be processed on the same chip. Additionally, EXTREM-EDGE aims to support domain-specific languages and frameworks like TensorFlow and PyTorch, facilitating easier adoption and programming by end-users.

EXTREM-EDGE's co-design approach begins with TVM translating AI algorithms from DSLs into C code, enabling programming in preferred languages. Then, Synopsys ASIP Designer compiles this code for the custom processor, generating an SDK and RTL for the design. The process involves iterative profiling and optimization, with a focus on addressing bottlenecks by adding new instructions or AFUs to the processor model described in nML. This ensures that the resulting hardware and software are optimized and in sync for AI edge processing.
 #### Method 3: Three alternative DT kernels optimization (Decision Trees and Random Forest in ML) for memory and compute-limited MCUs (Trung)
The article presents 3 ways of designing DT kernels:
- DT-Loop Kernel: represents the tree node as a recursive data structure, traversing trees from root to leaf through a while-loop statement.
- DT-Rec Kernel: embeds leaf nodes into parent decision nodes, thus allows roughtly a 50% nodes decrease but demands extending the node data structure (over model space drops by 25%). Using recursive function calling ifself whenever accessing new decision nodes.
- DT-Arr Kernel: Using 3 arrays naming features[], threshold[], child[], and using a while-loop statement to iteratively traverse the tree.

The goal of designing three new DT kernels is to compared against the widely-adopted naive DT design. The article also do kernels comparison between DT kernel designs and pinpoint the optimal kernel solution by evaluating the performance on a RISC-V platform (PULPissimo). The result is: achieving up to 4.5us latency, 4.8x speedup, and 45% storage reduction.

#### Method 4: LiteAIR5: A System-Level Framework for the Design and Modeling of AI-extended RISC-V Cores ( Kiệt)
LiteAIR5: A System-Level Framework for the Design and Modeling of AI-extended RISC-V Cores" presents LiteAIR5, a comprehensive framework for creating and modeling AI-extended RISC-V processor cores. This novel architecture incorporates instruction set architecture (ISA) extensions to significantly enhance performance, achieving up to 37x improvement for General Matrix Multiply (GEMM) operations over a baseline RISC-V core. 
- Use the Co-design like the Extreme Edge 
- Have the Control and Status Register (CSR) instructions
- Custom instructions (designed to work with specific AI Functional Units): mac, gemm,vmm,..

#### Method 5: Customizable Vector Acceleration in Extreme-Edge Computing (Trung)
To support CNN classification problems, by adding the Vector Coprocessing Unit (VCU), being internally comprised of Multi-purpose Functional Units (MFU) and Scratch-Pad memory interface (Forming T1 microrchitecture from the T0 - The T0 microarchitecture resembles a classic four-stage RISC pipeline, except for
having multiple Program Counters to support multi-threading, and replicated register files and Control/Status Registers). (T0 and T1 elaboration can be seen in the pdf)

For Klessydra-T processors there is a set of new RISC-V based instruction summarized in table 2 (pdf).

The core point is the design parameters and corresponding configurations including: M - Number of SPMI Units, F - number of FUs, D - number of each lane in FU

The article implement a VGG-16 derivation based on a widely known CIFAR-10 dataset (10 classes of 32x32 pixels images with total of 22 layers). Also the is a comparison chart between each optimal configuration for each layer against the non-accelerated T0 core in terms of time execution, efficiency, cost overhead, ....
#### Method 6: Logic in Memory (Phuc)
Logic in Memory (LiM) architectures to overcome the communication speed issue between the CPU and memory..The goal of the LiM concept is to reduce load and store operations by executing part of the computation directly inside the memory.
In more detail, the proposed memory architecture can perform the following operations:
- Normal load and store operations: the new memory can still behave like a memory such that it will perform a read or a write in just one clock cycle. The data port of the memory supports load and store for 8-bit, 16-bit or 32-bit data.
- Bitwise operations: The available bitwise operations are AND, OR and XOR
- Maximum and minimum: a special load operation, max min load enables calculation of the maximum or minimum value for a specific range of memory locations.

Link framework: https://github.com/vlsi-nanocomputing/risc-v-lim-architecture/tree/main

