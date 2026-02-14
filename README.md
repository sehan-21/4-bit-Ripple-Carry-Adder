# 4-bit Ripple Carry Adder

A comprehensive implementation of a 4-bit Ripple Carry Adder using **structural modeling** in Verilog on Xilinx Vivado. This project demonstrates hierarchical design patterns and carry propagation principles in digital logic.

##  Project Overview

This project implements a 4-bit Ripple Carry Adder (RCA) by cascading four full adder modules. The ripple carry architecture allows sequential carry propagation through each adder stage, making it suitable for educational purposes and understanding digital arithmetic circuits.

### Key Features

- **Hierarchical Architecture**: Full adder modules instantiated within the ripple carry structure
- **Structural Modeling**: Module-based design with explicit interconnections
- **Complete Verification**: Self-checking testbench with comprehensive test cases
- **Vivado Integration**: Full simulation and synthesis ready

##  Tools Used

- **Verilog HDL** - Hardware description language for circuit design
- **Xilinx Vivado** - Design suite for simulation, synthesis, and implementation

## Concepts Covered

- **Structural Modeling** - Component instantiation and hierarchy
- **Carry Propagation** - Understanding ripple carry delay behavior
- **Full Adder Logic** - Sum and carry generation (S = A ⊕ B ⊕ Cin, Cout = AB + (A ⊕ B)Cin)
- **Testbench Design** - Self-checking verification methodology
- **Simulation Waveform Analysis** - Timing and delay observation

##  File Structure

| File | Purpose |
|------|---------|
| `full_adder.v` | Single-bit full adder module |
| `ripple_adder.v` | 4-bit ripple carry adder (top module) |
| `ripple_addtb.v` | Self-checking testbench |

##  Design Details

### Full Adder Module (`full_adder.v`)
- **Inputs**: A, B (data bits), Cin (carry-in)
- **Outputs**: S (sum), Cout (carry-out)
- **Logic**: Combinational circuit using basic gates

### Ripple Carry Adder (`ripple_adder.v`)
- **Inputs**: A[3:0], B[3:0] (4-bit operands), Cin (initial carry)
- **Outputs**: Sum[3:0] (4-bit sum), Cout (final carry-out)
- **Architecture**: Four full adder instances cascaded with carry propagation

##  Verification Results

- ✓ Correct operation verified for **all 512 input combinations** (2^9 = 9-bit input space)
- ✓ Carry propagation delay behavior observed and documented
- ✓ All edge cases tested (overflow, zero addition, maximum values)
- ✓ No timing violations detected during simulation

##  Performance Characteristics

| Metric | Value |
|--------|-------|
| Data Width | 4-bit |
| Worst-Case Delay | ~4 gate delays (full carry propagation) |
| Gate Count | ~20 gates (2-input + 1 XOR) |
| Power Consumption | Minimal (combinational logic) |

##  Getting Started

### Prerequisites
- Xilinx Vivado 2020.x or newer
- Basic knowledge of Verilog HDL

### Running Simulation

1. Create a new project in Vivado
2. Add source files: `full_adder.v`, `ripple_adder.v`, `ripple_addtb.v`
3. Set `ripple_addtb.v` as the top module
4. Run behavioral simulation
5. Analyze waveforms in the simulation viewer

### Expected Waveform Behavior
- Observe delay as carry ripples through stages
- Verify sum outputs match expected values
- Check carry-out generation

##  Learning Outcomes

This project provides hands-on experience with:
- Modular hardware design practices
- Hierarchical Verilog structural modeling
- Testbench development and verification
- Understanding of arithmetic circuits
- Timing and delay analysis

##  Extensions & Improvements

Potential enhancements to explore:
- Implement a **Carry Lookahead Adder** for comparison
- Add timing constraints and post-synthesis simulation
- Design a Kogge-Stone parallel prefix adder
- Create an 8-bit or 16-bit version
- Implement in FPGA and measure actual hardware performance

##  Notes

- The ripple carry architecture has propagation delay proportional to the number of bits
- This design is optimal for small word widths (< 8 bits)
- For larger widths, consider faster adder architectures like carry lookahead or parallel prefix adders

---
