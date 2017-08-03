`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:20:15 04/15/2017 
// Design Name: 
// Module Name:    CPU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module CPU(clk, RAM2DR, AR2BusAMuxRAM, RAMWriteEnable, DR2BusAMuxRAM, RAMorALUOut2DRIn/* after this testing wires*/, IROut, AC2BusAMux, PC2BusAMux, R2ALU, TR2BusAMux, 
	busA2ALU, ALUOut, opcode, select, UART2RAMCompleted, EndOperations, busAMuxSelect, Z);
	
	output [15:0] AC2BusAMux, PC2BusAMux, R2ALU, TR2BusAMux, busA2ALU, ALUOut; //for testing
	output [5:0] IROut, opcode; //for testing
	output select, EndOperations; // to test
	output [2:0] busAMuxSelect; // to test endops

	//input [10:0] instruction;
	input [15:0] RAM2DR;
	input clk, UART2RAMCompleted;
	
	//output [7:0] AR2BusAMuxRAM;
	output RAMWriteEnable, Z;
	output [15:0] AR2BusAMuxRAM, DR2BusAMuxRAM;
	output RAMorALUOut2DRIn;
	/*output [15:0] AC2BusAMux,PC2BusAMux, R2ALU, TR2BusAMux;*/
	//output Z;
	
	wire [2:0] ALUControlSignal, busAMuxSelect, writeEnableSelect;
	wire RAMWriteEnable, zClear;
	wire [5:0] IR2ControlUnit, IROut;
	wire [10:0] instruction2processingUnit;
	wire RAMorALUOut2DRIn, UART2RAMCompleted;
	
	assign ALUControlSignal = instruction2processingUnit[10:8];
	assign busAMuxSelect = instruction2processingUnit[7:5];
	assign writeEnableSelect = instruction2processingUnit[4:2];
	assign RAMWriteEnable = instruction2processingUnit[1];
	assign zClear = instruction2processingUnit[0];
	assign Z2ControlUnit = Z;
	assign IR2ControlUnit = IROut;
	//assign instruction = instruction2processingUnit;

	processingUnit processingUnit(clk, ALUControlSignal, busAMuxSelect, writeEnableSelect,	zClear,
		RAM2DR, AR2BusAMuxRAM, DR2BusAMuxRAM, Z, IROut, RAMorALUOut2DRIn/* after this testing wires*/, AC2BusAMux, PC2BusAMux, R2ALU, TR2BusAMux, 
	busA2ALU, ALUOut,UART2RAMCompleted, EndOperations);
	
	controlUnit controlUnit(clk, Z2ControlUnit, IR2ControlUnit, instruction2processingUnit, RAMorALUOut2DRIn/* after this testing wires*/,
	 opcode, select, UART2RAMCompleted, EndOperations);
	wire [5:0] opcode; // to test
	wire select; //to test
	
	//for testing purposes we take the wires out of the module. not needed for the functioning of the CPU
		
	
endmodule
