`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:24:31 01/24/2017 
// Design Name: 
// Module Name:    rx 
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
module reciever(
		clk,
		rx,
		data,
		data_ready,
		clear
    );

input clk,rx,clear;
output reg [7:0] data;
output reg data_ready;

reg [2:0] state;
reg [15:0] counter;
reg [5:0] bit_counter;
reg [7:0] buffer;


initial begin 
	data_ready=0;
	data <= 8'b0;
	buffer <= 8'b0;
	state <= 2'b00;
	bit_counter <= 4'b0000;
	counter <= 0;
end



always@(posedge clk) begin
	if(clear) begin
		data <= 0;
		buffer <= 0;
		data_ready <= 0;
	end
	if(state == 2'b00) begin
		if(rx == 0) begin
			counter <= 0;
			state <= 2'b01;
		end
	end
	else if(state == 2'b01) begin
		if(counter == 5208) begin
			if(rx == 0) begin
				state <= 2'b10;
				counter <= 0;
				buffer <= 0;
				data_ready <= 0;
				bit_counter <= 0;
			end
		end
		else begin
			counter <= counter +1 ;
		end
	end
	else if(state == 2'b10) begin
		if(counter == 10416 ) begin
			buffer[bit_counter] <= rx;
			bit_counter <= bit_counter + 1;
			counter <= 0;
			if(bit_counter == 8) begin
				state <= 2'b11;
			end
		end
		else begin
			counter <= counter +1 ;
		end
	end
	else if(state == 2'b11) begin
		if(counter == 10416) begin
			if(rx == 1) begin
				data <= buffer;
				state <= 2'b00;
				data_ready <= 1;
				buffer <= 0;
			end
			else begin
				buffer <= 0;
			end
		end
		else begin
			counter <= counter +1 ;
		end
	end
end



endmodule

