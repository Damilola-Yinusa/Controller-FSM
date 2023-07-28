# FSM DESIGN: Fibonacci Series Calculator

Welcome to the repository of my FSM Design project. This repository contains all the resources needed to implement a Control Unit for a Fibonacci Series calculator using Finite State Machine (FSM).

The FSM has four external inputs START, ZERO_FLAG, CLK and RST and one output DONE to indicate that the calculation is completed. This component performs all the required control operations, providing three outputs: opcode, operand1 and operand2. 


## Overview
The project is divided into two main subcomponents: **FSM** and **FSM_DECO**. 

### FSM
FSM takes four external inputs START, ZERO_FLAG, CLK, RST and gives one output DONE to indicate the completion of calculation. This component provides control operations with three outputs: opcode, operand1, and operand2.

### FSM_DECO
FSM_DECO takes these three outputs as input and decodes the signals as per the instructions. The output of FSM_DECO will control the Fibonacci Series calculation on the Datapath.

Once a START signal is asserted, the Fibonacci Series calculation will start and continue until the predefined COUNT stored in memory equals 0.

## Top-Level Design
The top-level implementation will be simulated in Modelsim and programmed into your FPGA Board using Quartus. It includes three displays for the outputs where one of the displays on the left will show the current state of the FSM.

## Contents
* **State Diagram of FIBO_FSM**: A state diagram and state table showing all the inputs, outputs, and state transitions.
* **Parameterized Verilog Code**: Verilog codes and block schematics of FSM, Datapath, and all other components used in the design.
* **Testbench**: Test bench code for Datapath to test the Fibonacci Series calculation for 7 sequences.
* **Timing Constraints**: Instructions to optimize the timing of signals using Altera place and route tools.

## Experimental Work
Verify that your workbench includes a PC with Altera Quartus II ISE 13.0 Service pack 1 Project Navigator and a DEO Demo Board with Cyclone III EP3C16F484C6 FPGA.
