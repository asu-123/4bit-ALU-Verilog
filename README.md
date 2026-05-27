# 4bit-ALU-Verilog
# 4-Bit ALU using Verilog HDL

## Overview
This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL.  
The ALU performs basic arithmetic operations including:

- Addition
- Subtraction
- Multiplication
- Division

The design is intended for FPGA implementation and simulation using Vivado or other Verilog simulation tools.

---

## Features
- Modular Verilog design
- 4-bit input operands
- 8-bit output result
- Separate arithmetic modules
- FPGA compatible
- Simple RTL architecture

---

## Inputs and Outputs

### Inputs
- A [3:0] → First operand
- B [3:0] → Second operand
- SEL [1:0] → Operation select

### Output
- RESULT [7:0] → ALU output
- Remainder [3:0] for divider only
---

## Operation Table

| SEL | Operation |
|-----|------------|
| 00  | Addition |
| 01  | Subtraction |
| 10  | Multiplication |
| 11  | Division |

---

## Tools Used
- Verilog HDL
- Xilinx Vivado
- FPGA Development Board

---

## Simulation
The design was verified using testbench simulation.

---

## Future Improvements
- Overflow detection
- Logical operations
- Barrel shifter
- Signed arithmetic support
- 8-bit ALU extension

---

## Author
Asanka Maiti
