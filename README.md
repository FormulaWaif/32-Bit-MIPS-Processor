
---

# 32-bit MIPS Processor

## Table of Contents

- [Introduction](#introduction)
- [Architecture](#architecture)
- [Components](#components)
- [Implementation](#implementation)
- [Testing](#testing)
- [Usage](#usage)
- [Contributors](#contributors)
- [License](#license)

## Introduction

This project involves the design and implementation of a 32-bit MIPS processor. The MIPS architecture is a widely-studied RISC (Reduced Instruction Set Computer) architecture, making it a great educational tool for understanding the fundamentals of computer architecture and processor design.

## Architecture

The MIPS processor we built follows a simplified architecture that includes the following stages:
- **Instruction Fetch (IF)**
- **Instruction Decode (ID)**
- **Execute (EX)**
- **Memory Access (MEM)**
- **Write Back (WB)**

Each stage is carefully designed to ensure efficient processing and minimal latency.

## Components

### 1. ALU (Arithmetic Logic Unit)
The ALU performs all arithmetic and logical operations. It supports operations such as addition, subtraction, AND, OR, and XOR.

### 2. Register File
The register file contains 32 general-purpose registers used for storing temporary data.

### 3. Control Unit
The control unit generates control signals required for various operations based on the instruction opcode.

### 4. Memory
The memory unit is divided into instruction memory and data memory, each serving its purpose during the fetch and execute stages.


## Implementation

The implementation is carried out in VHDL, and the design is synthesized and tested using Xilinix.

### Steps:

1. **Design Specification**
   - Define the instruction set and architecture.

2. **Module Design**
   - Design individual modules (ALU, Control Unit, Register File, Memory).

3. **Integration**
   - Integrate modules into a single processor design.

4. **Simulation**
   - Simulate the design to verify functionality.

5. **Synthesis**
   - Synthesize the design using Xilinix tools.

## Testing

Extensive testing is performed to ensure the correct functionality of the processor. Testbenches are created for each module, and various MIPS assembly programs are run to validate the processor's operations.


## Contributors

- Amr Emad Abouelnasr
- Hagar Elhishi
- Jana Hamada
- Yehia Ehab
- Malak Wagdy

