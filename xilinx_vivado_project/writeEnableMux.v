`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:37:56 04/10/2017 
// Design Name: 
// Module Name:    writeEnableMux 
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
module writeEnableMux(select, ACWE, ARWE, DRWE, IRWE, PCWE, RWE, TRWE);
	input [2:0] select;
	output ACWE, ARWE, DRWE, IRWE, PCWE, RWE, TRWE;
	reg ACWE, ARWE, DRWE, IRWE, PCWE, RWE, TRWE;
	parameter ac=3'b000, ar=3'b001, dr=3'b010, ir=3'b011, pc=3'b100, r=3'b101, tr=3'b110, pcanddr=3'b111;
	
	always @(select)
		begin
			ACWE<=0; ARWE<=0; DRWE<=0; IRWE<=0; PCWE<=0; RWE<=0; TRWE<=0;
			case (select)
				ac: ACWE <= 1;
				ar: ARWE <= 1;
				dr: DRWE <= 1;
				ir: IRWE <= 1;
				pc: PCWE <= 1;
				r: RWE <= 1;
				tr: TRWE <= 1;
				pcanddr: 
					begin
						PCWE <= 1;
						DRWE <= 1;
					end
			endcase
		end

endmodule
