`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:57:52 04/08/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU(controlSignal, dataIn, dataOut, RIn, clk, Z, zClear); //Z taken out for the purpose of testing???
input clk;
input [2:0] controlSignal;
input [15:0] dataIn, RIn;
input zClear;
output Z;
output [15:0] dataOut;
reg [15:0] dataOut;
integer data;
reg Z;

parameter NOP=2'b000, OR=2'b001, SUB=2'b010, 
	LSHIFT=2'b011, RSHIFT=3'b100, MOVR=3'b101, INC=3'b110;

initial
begin
	Z<=0;
end

always @(controlSignal or dataIn or RIn or zClear)
	begin
		case (controlSignal)
			NOP: dataOut <= dataIn;
			OR: dataOut <= RIn | dataIn;
			SUB: dataOut <= dataIn-RIn;
			LSHIFT: dataOut <= dataIn << RIn;
			RSHIFT: dataOut <= dataIn >> RIn;
			MOVR: dataOut <= RIn;
			INC:
				begin
					data = dataIn + 1;
					dataOut <= data[15:0];
				end
			default dataOut <= 16'b0000000000000000;
		endcase
	end
	
	always @(posedge clk)
	begin
		if (Z==1 && zClear)
			Z=0;
		else if (controlSignal==2 && dataOut==0)
			Z=1;
	end

endmodule
