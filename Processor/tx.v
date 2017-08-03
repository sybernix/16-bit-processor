`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:32:28 01/24/2017 
// Design Name: 
// Module Name:    tx 
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
module transmitter(
			clk,
			send,
			busy,
			data,
			tx
    );
	 
input clk,send;
input [7:0] data;
output reg busy;
output reg tx;

reg [6:0] bit_counter;
reg [2:0] state;


initial begin
	bit_counter <= 0;
	state <= 2'b00;
	tx  <= 1;
	busy <= 0;
end


always@(posedge clk) begin
	if(state == 2'b00) begin 
		if(send && ~busy) begin
			bit_counter 	<= 0;
			tx		  	<= 0;
			busy     <= 1;
			state 	<= 2'b01;
		end
	end
	else if(state == 2'b01) begin
		if(bit_counter < 8) begin
			tx			<= data[bit_counter];
			bit_counter 	<= bit_counter + 1;
		end
		else begin
			tx 		<= 1;
			state 	<= 2'b10;
		end
	end
	
	else if(state == 2'b10) begin
		tx 		<= 1;
		busy 		<= 0;
		bit_counter 	<= 0;
		state 	<= 2'b00;
	end
end


endmodule
