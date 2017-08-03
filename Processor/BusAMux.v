`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:14:34 04/10/2017 
// Design Name: 
// Module Name:    BusAMux 
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
module busAMux(select, AC, AR, PC, DR, TR, busAout, EndOperations, clk);
	input [2:0] select;
	input [15:0] AC, AR, PC,  DR, TR;
	output [15:0] busAout;
	output EndOperations;
	input clk;
	reg [15:0] busAout;
	parameter ac=3'b000, ar=3'b001, pc=3'b010, dr=3'b011, tr=3'b100;
	
	assign EndOperations = (select == 6) ? 1 : 0;
	
	always @(select or AC or AR or PC or DR or TR)
	begin
		case (select)
			ac: busAout <= AC;
			ar: busAout <= AR;
			pc: busAout <= PC;
			dr: busAout <= DR;
			tr: busAout <= TR;
			default: busAout <= 0;
		endcase
	end

endmodule
