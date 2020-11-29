`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:06:52 04/16/2017 
// Design Name: 
// Module Name:    RAM 
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
module RAM(
	input [15:0] address,
	input [15:0] dataIn,
	input writeEnable, clk,
	output [15:0] dataOut,
	
	input [15:0] UARTaddress,
	input [15:0] UARTdataIn,
	input UARTwriteEnable,
	output [15:0] UARTdataOut);

memory1 dualPortMemory(
	.clka(clk),
	.wea(writeEnable),
	.addra(address),
	.dina(dataIn),
	.douta(dataOut),
	.clkb(clk),
	.web(UARTwriteEnable),
	.addrb(UARTaddress),
	.dinb(UARTdataIn),
	.doutb(UARTdataOut)
	);


endmodule
