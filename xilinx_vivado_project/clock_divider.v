`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:14:34 01/24/2017 
// Design Name: 
// Module Name:    clock_divider 
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
module clock_divider(
		clk_in,
		clk_out
    );
input clk_in;
output reg clk_out;


reg[15:0] counter;

initial begin
	counter <=0;
	clk_out <= 0;
end


always @(posedge clk_in) begin
		counter <= counter +1;
		if(counter == 5208) begin
			clk_out = ~clk_out;
			counter <=0;
		end

end


endmodule
