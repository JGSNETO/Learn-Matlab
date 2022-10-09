## Overview

- Create and simulate models of real world component and systems. 
- Start with block diagrams.
- Next steps is simulate using Simulink. 

### Simulink Basics 

- Simulink uses graphical elements to represent the inputs, outputs and calculations within a simulation connections between blocks are made at ports.
- A signal is a piece of information, such as numeric value, which can change over the course of a simulation. Blocks accept signals at input ports, peform an operation ports. Signal lines are visual elements that connect block ports and show where a signal flows: From output ports to input ports, and in the direction of the arrow. 

### Inspecting Signals 

- Reading the value of a signal is an important aspect of understanding and debugging simulations. 

### Obtaining Help

- Documentation for specific blocks can be accessed directly from Simulink. In the Block Parameters dialog (accessible by double-clicking a block), there are two ways to get help:
 
1. The block description: a short overview of the basic functions of the block.
2. The Help button: opens the documentation page for that block.

### Simualtion time and Step Size

- When Simulink runs a simulation, it numerically solves the dynamic equations represented in the model. Characteristics of dynamic systems can vary widely; for example, they can be discrete, continuous, fast, and slow. To account for this, there are many types of numerical solvers.
- Simulink knows how to assess the properties of your system and automatically select a good solver for you. However, the auto-solver cannot determine how long your simulation should run. For example, the two systems below have different dynamics. To accurately capture the interesting behavior, the slow system (left) should be run for more time, and the fast system (right) for less.
 
