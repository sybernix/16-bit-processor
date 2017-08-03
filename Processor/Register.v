`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:20:03 04/08/2017 
// Design Name: 
// Module Name:    Register 
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
module register(clk, dataIn, dataOut, writeEnable, UART2RAMCompleted);
	input clk, writeEnable, UART2RAMCompleted;
	input [15:0] dataIn;
	output [15:0] dataOut;
	reg [15:0] dataOut=0;
	
	always @(posedge clk)
		begin
			if (writeEnable)
				begin
					dataOut <= dataIn;
				end
		end

endmodule
