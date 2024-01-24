## Link for study: 
- https://libraetd.lib.virginia.edu/public_view/kw52j890r

## Deploying Deep Learning Models on the Edge with Kenning

[Deploying Deep Learning Models on the Edge with Kenning](https://riscv.org/news/2021/06/deploying-deep-learning-models-on-the-edge-with-kenning/)

# Astract
Deep neural networks are highly demanding algorithms that consist of a huge amount of linear algebra operations which are both compute- and memory-intensive. Running them directly on edge devices is either impossible due to lack of resources or impractical due to incredibly long processing time. Hence, it is crucial to optimize the models for a given target platform before deployment, using a deep learning compiler.

![Alt text](https://github.com/illubaby/Optimization_RISC-V/blob/main/Background/Examine%20ML%20on%20EdgeAI%20and%20RISC-V/picture/edge-ai-development-flow.png)
We need our AI solutions to be portable across a variety of hardware, ML frameworks and cloud solutions :  the Kenning framework
Step my step to creating Edge AI deployment stacks:
- Specify the task
- Create dataset
- Analyze
- Select the deep learning model
- Train the model 
  ...
# The Kenning framework 
Kenning is a new ML framework developed by Antmicro for testing and deploying deep learning applications on the edge. 

Kenning’s structure:
Dataset class - performs dataset downloading, preparation, input preprocessing, output postprocessing and model evaluation,
Model wrapper class - trains the model, prepares the model, performs model-specific input preprocessing and output postprocessing, runs inference on host using native framework,
Model compiler class - optimizes and compiles the model,
Runtime class - loads the model, performs inference on compiled model, runs target-specific processing of inputs and outputs, and runs performance benchmarks
Runtime Protocol class - implements the communication protocol between the host and the target.
# Tracking performance of DL applications on target hardware
One of the advantages of Kenning is the possibility to easily verify the work of the model on your target hardware - it calculates both performance measures (like CPU usage, GPU usage, RAM and VRAM usages, inference time), and quality measures (accuracy, precision, recall, G-Mean for classification scenarios, and IoU, mAP for detection scenarios).