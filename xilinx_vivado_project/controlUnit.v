`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:55:43 04/17/2017 
// Design Name: 
// Module Name:    controlUnit 
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
module controlUnit(clk, Z2ControlUnit, IR2ControlUnit, instruction2processingUnit, RAMorALUOut2DRIn/*after this to test*/, opcode, select,UART2RAMCompleted, EndOperations);

	input clk, Z2ControlUnit, UART2RAMCompleted, EndOperations;
	input [5:0] IR2ControlUnit;
	
	output [10:0] instruction2processingUnit;
	output RAMorALUOut2DRIn;
	output [5:0] opcode; //to test
	output select; //to tests
	
	reg [18:0] instruction=1;
	wire [5:0] opcode;
	wire select;
	reg RAMorALUOut2DRIn=0;
	
	assign instruction2processingUnit = instruction[17:7];
	assign select = instruction[0];
	assign opcode = (select)? IR2ControlUnit: instruction[6:1];
	
	//method to select DR input from RAM
	
	
	parameter 
	fetch1=0,
	fetch2=1,
	fetch3=2,
	fetch4=3,
	ADD1=4,
	SUB1=5,
	NOP=6,
	LDAC1=7,
	LDAC2=8,
	LDAC3=9,
	LDAC4=10,
	LDAC5=11,
	LDAC6=12,
	LDAC7=13,
	MVAC2R1=14,
	MVR2AC1=15,
	MVAC2TR1=16,
	MVTR2DR1=17,
	STAC1=18,
	STAC2=19,
	STAC3=20,
	STAC4=21,
	STAC5=22,
	STAC6=23,
	JUMP1=24,
	JUMP2=25,
	JUMP3=26,
	JUMP4=27,
	JUMPZ1=28,
	JUMPZ2=29,
	JUMPZ3=30,
	JUMPZ4=31,
	CLAC1=32,
	LSHIFT1=33,
	RSHIFT1=34,
	ENDOPS=35,
	LOAD1=36,
	LOAD2=37,
	LOAD3=38,
	LOAD4=39,
	MVTR2AC1=40;

	always @(posedge clk)
		begin
			if (UART2RAMCompleted & !(EndOperations))
			begin
				case (opcode)
					fetch2: RAMorALUOut2DRIn=1;
					fetch3: RAMorALUOut2DRIn=1;
					LDAC2: RAMorALUOut2DRIn=1;
					LDAC3: RAMorALUOut2DRIn=1;
					LDAC5: RAMorALUOut2DRIn=1;
					LDAC6: RAMorALUOut2DRIn=1;
					STAC2: RAMorALUOut2DRIn=1;
					STAC3: RAMorALUOut2DRIn=1;
					JUMP2: RAMorALUOut2DRIn=1;
					JUMP3: RAMorALUOut2DRIn=1;
					JUMPZ2: RAMorALUOut2DRIn=1;
					JUMPZ3: RAMorALUOut2DRIn=1;
					LOAD2: RAMorALUOut2DRIn=1;
					LOAD3: RAMorALUOut2DRIn=1;
					default: RAMorALUOut2DRIn=0;
				endcase
			end
		end



	always @(negedge clk)
		begin
			if (UART2RAMCompleted & !(EndOperations))
			begin
				if (!(Z2ControlUnit))
					begin
						case (opcode)
							fetch1:instruction=8706;
							fetch2:instruction=470532;
							fetch3:instruction=492550;
							fetch4:instruction=13825;
							ADD1:instruction=32768;
							SUB1:instruction=65536;
							NOP:instruction=206848;
							LDAC1:instruction=8720;
							LDAC2:instruction=470546;
							LDAC3:instruction=492564;
							LDAC4:instruction=12822;
							LDAC5:instruction=291864;
							LDAC6:instruction=492570;
							LDAC7:instruction=12288;
							MVAC2R1:instruction=2560;
							MVR2AC1:instruction=192512;
							MVAC2TR1:instruction=3072;
							MVTR2DR1:instruction=17408;
							STAC1:instruction=8742;
							STAC2:instruction=470568;
							STAC3:instruction=492586;
							STAC4:instruction=12844;
							STAC5:instruction=1070;
							STAC6:instruction=12544;
							JUMP1:instruction=8754;
							JUMP2:instruction=470580;
							JUMP3:instruction=492598;
							JUMP4:instruction=14336;
							JUMPZ1:instruction=8762;
							JUMPZ2:instruction=470588;
							JUMPZ3:instruction=492606;
							JUMPZ4:instruction=14464;
							CLAC1:instruction=258048;
							LSHIFT1:instruction=98304;
							RSHIFT1:instruction=131072;
							ENDOPS:instruction=24646;
							LOAD1:instruction=586;
							LOAD2:instruction=291916;
							LOAD3:instruction=291918;
							LOAD4:instruction=12288;
							MVTR2AC1:instruction=16384;

						endcase
					end
				else
					begin
						case (opcode)
							fetch1:instruction=8706;
							fetch2:instruction=470532;
							fetch3:instruction=492550;
							fetch4:instruction=13825;
							ADD1:instruction=32768;
							SUB1:instruction=65536;
							NOP:instruction=206848;
							LDAC1:instruction=8720;
							LDAC2:instruction=470546;
							LDAC3:instruction=492564;
							LDAC4:instruction=12822;
							LDAC5:instruction=291864;
							LDAC6:instruction=492570;
							LDAC7:instruction=12288;
							MVAC2R1:instruction=2560;
							MVR2AC1:instruction=192512;
							MVAC2TR1:instruction=3072;
							MVTR2DR1:instruction=17408;
							STAC1:instruction=8742;
							STAC2:instruction=470568;
							STAC3:instruction=492586;
							STAC4:instruction=12844;
							STAC5:instruction=1070;
							STAC6:instruction=12544;
							JUMP1:instruction=8754;
							JUMP2:instruction=470580;
							JUMP3:instruction=492598;
							JUMP4:instruction=14336;
							JUMPZ1:instruction=206976;
							CLAC1:instruction=258048;
							LSHIFT1:instruction=98304;
							RSHIFT1:instruction=131072;
							ENDOPS:instruction=24646;
							LOAD1:instruction=586;
							LOAD2:instruction=291916;
							LOAD3:instruction=291918;
							LOAD4:instruction=12288;
							MVTR2AC1:instruction=16384;

						endcase
					end
				end
		end


endmodule

