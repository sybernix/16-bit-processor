`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:23:12 04/16/2017 
// Design Name: 
// Module Name:    computer 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: b
//
//////////////////////////////////////////////////////////////////////////////////
module computer(clk, rx, tx, busy, LED0, LED1, LED2, LED3, LED4, LED5, LED6);

	input clk;
	input rx;
	output tx;
	output wire busy;
	output LED0, LED1, LED2, LED3, LED4, LED5, LED6;
	
	wire [15:0] DR2BusAMuxRAM, AR2BusAMuxRAM;
	wire [15:0] RAM2DR;
	wire RAMWriteEnable, RAMorALUOut2DRIn;
	wire [15:0] AC2BusAMux, PC2BusAMux, R2ALU, TR2BusAMux, busA2ALU, ALUOut; //for testing
	wire [5:0] opcode; // to test
	wire select; //to test
	wire UART2RAMCompleted, EndOperations;
	wire [5:0] IROut;
	
	wire [15:0] RAMAddressByUART, UARTdata2RAM, RAMData2UART;
	wire RAMWriteEnableByUART;
	wire [2:0] busAMuxSelect; // to test endops
	
	assign UARTdata2RAM[15:8] = 0;
	assign RAMData2UART[15:8] = 0;
	
	wire clkprocessor, clkUART, Z;
	
	clkop clkop (clk,clkUART,clkprocessor);

	CPU CPU(clkprocessor, RAM2DR, AR2BusAMuxRAM, RAMWriteEnable, DR2BusAMuxRAM, RAMorALUOut2DRIn/* after this testing wires*/, IROut, AC2BusAMux,
	PC2BusAMux, R2ALU, TR2BusAMux, busA2ALU, ALUOut, opcode, select, UART2RAMCompleted, EndOperations, busAMuxSelect, Z);
	
	RAM RAM(AR2BusAMuxRAM, DR2BusAMuxRAM, RAMWriteEnable, clkprocessor, RAM2DR, /*UART PORT*/ RAMAddressByUART, UARTdata2RAM, RAMWriteEnableByUART, RAMData2UART);
		
	UART UART(clkUART, tx, rx, clk_out, busy, /*RAM Interface*/ RAMAddressByUART, UARTdata2RAM[7:0], RAMData2UART[7:0], RAMWriteEnableByUART,
		LED0, LED1, LED2, LED3, LED4, LED5, LED6, UART2RAMCompleted, EndOperations);
	

endmodule
