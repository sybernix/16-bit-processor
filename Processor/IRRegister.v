`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:20:26 05/14/2017 
// Design Name: 
// Module Name:    IRRegister 
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
module IRRegister(clk, dataIn, dataOut, writeEnable,UART2RAMCompleted);
	input clk, writeEnable, UART2RAMCompleted;
	input [5:0] dataIn;
	output [5:0] dataOut;
	reg [5:0] dataOut=0;
	
	always @(posedge clk)
		begin
			if (writeEnable)
				begin
					dataOut <= dataIn;
				end
		end

endmodule

