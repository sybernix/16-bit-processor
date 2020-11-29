`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:12:30 04/11/2017 
// Design Name: 
// Module Name:    processingUnit 
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
module processingUnit(clk, ALUControlSignal, busAMuxSelect, writeEnableSelect, zClear,
	RAM2DR, AR2BusAMuxRAM, DR2BusAMuxRAM, Z, IROut, RAMorALUOut2DRIn/* after this testing wires*/, AC2BusAMux, PC2BusAMux, R2ALU, TR2BusAMux, 
	busA2ALU, ALUOut, UART2RAMCompleted, EndOperations);
	input [2:0] ALUControlSignal, busAMuxSelect, writeEnableSelect;
	input clk, zClear, RAMorALUOut2DRIn, UART2RAMCompleted;
	input [15:0] RAM2DR;
	output [15:0] DR2BusAMuxRAM;
	output [15:0] AR2BusAMuxRAM;
	output [5:0] IROut;
	output Z, EndOperations;
	
	output [15:0] AC2BusAMux, PC2BusAMux, R2ALU, TR2BusAMux, busA2ALU, ALUOut; //for testing
	
	wire clk, UART2RAMCompleted;
	wire [15:0] ALUOut, AC2BusAMux,AR2BusAMuxRAM, PC2BusAMux, DR2BusAMuxRAM, TR2BusAMux, busA2ALU, R2ALU;
	wire [5:0] IROut;
	wire [15:0] RAM2DR;
	wire [15:0] DRInput; //specially handled bcz it takes input from both ALUOut and RAM
	
	assign DRInput = (RAMorALUOut2DRIn) ? RAM2DR : ALUOut; // ATTENTION!! have to edit this with enablers
	
	register AC(clk, ALUOut, AC2BusAMux, ACWE, UART2RAMCompleted);
	register AR(clk, ALUOut, AR2BusAMuxRAM, ARWE, UART2RAMCompleted);
	register DR(clk, DRInput, DR2BusAMuxRAM, DRWE, UART2RAMCompleted);
	IRRegister IR(clk, ALUOut[5:0], IROut, IRWE, UART2RAMCompleted);
	register PC(clk, ALUOut, PC2BusAMux, PCWE, UART2RAMCompleted);
	register R(clk, ALUOut, R2ALU, RWE, UART2RAMCompleted);
	register TR(clk, ALUOut, TR2BusAMux, TRWE, UART2RAMCompleted);
	
	busAMux busAMux(busAMuxSelect, AC2BusAMux, AR2BusAMuxRAM, PC2BusAMux, DR2BusAMuxRAM, TR2BusAMux, busA2ALU, EndOperations, clk);
	writeEnableMux writeEnableMux(writeEnableSelect, ACWE, ARWE, DRWE, IRWE, PCWE, RWE, TRWE);
		
	ALU ALU(ALUControlSignal, busA2ALU, ALUOut, R2ALU, clk, Z, zClear);
	
endmodule
