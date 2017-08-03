
//////////////////////////////////////////////////////////////////////////////////

module UART(clk_in, tx, rx, clk_out, busy, /*RAM Interface*/ RAMAddressByUART, UARTdata2RAM, RAMData2UART, RAMWriteEnableByUART,
	LED0, LED1, LED2, LED3, LED4, LED5, LED6, UART2RAMCompleted, EndOperations);

input clk_in,rx, EndOperations;
output tx;
output wire clk_out;
output [15:0] RAMAddressByUART;
output [7:0] UARTdata2RAM;
output RAMWriteEnableByUART;
output reg UART2RAMCompleted=0;
input [7:0] RAMData2UART;
output reg LED0, LED1, LED2, LED3, LED4, LED5, LED6;


output wire busy;
wire ready;
reg send;
reg clear;
reg[7:0] data_i;
wire [7:0] data_o;


//reg cleared;
reg[15:0] next_RAMAddressByUART ;
reg [15:0] recieve_counter;
reg [15:0] send_counter;
reg recieved;

reg [15:0] RAMAddressByUART;
reg [7:0] UARTdata2RAM;
reg RAMWriteEnableByUART;
wire [7:0] RAMData2UART;
	
/*RAM singleport(
	.clka(clk_in),
	.addra(RAMAddressByUART),
	.dina(UARTdata2RAM),
	.douta(RAMData2UART),
	.wea(RAMWriteEnableByUART)
	);*/

clock_divider cd(.clk_in(clk_in),
						.clk_out(clk_out)
						);

transmitter trans(.clk(clk_out),
			.send(send),
			.busy(busy),
			.data(data_i),
			.tx(tx)
			);
			
			
reciever recive(.clk(clk_in),
				.rx(rx),
				.data(data_o),
				.data_ready(ready),
				.clear(clear)
				);
				
reg [2:0] state;

always@(posedge clk_out) begin	
	if (state==0)begin 
		//next_RAMAddressByUART =0;
		if (ready)begin
			state <= 1;
		end
	end
	else if (state==1)
	begin
		UARTdata2RAM <= data_o  ;
		RAMAddressByUART <= next_RAMAddressByUART;
		RAMWriteEnableByUART <=  1;
		next_RAMAddressByUART <= next_RAMAddressByUART+1;
		recieve_counter <= recieve_counter +1;
		clear <= 1;
		state <= 2;
	end
	
	else if(state==2) begin
		RAMWriteEnableByUART  <= 0;
		clear <= 0;
		if (recieve_counter==246)begin
			state <=3;
			UART2RAMCompleted <= 1;
		end
		else begin
			state <=0;
			UART2RAMCompleted <= 0;
		end
	end
	else if (state==3) begin
		RAMAddressByUART <=0;
		next_RAMAddressByUART <= 1;
		send_counter <= 0;
		state <=7;
		/*if (EndOperations)
			begin
				state <=4;
			end
		else
		begin
			state <=3;
		end*/
	end
	else if (state ==4) begin
		if (~busy)begin
			data_i <= RAMData2UART;
			send <=1;
			RAMAddressByUART <= next_RAMAddressByUART;
			next_RAMAddressByUART <= next_RAMAddressByUART +1;
			send_counter <= send_counter +1;
			state <=5;
		end
	end
	else if (state ==5) begin
		send<=0;
		if (send_counter==246)begin
			state <=6;
		end
		else begin
			state <=4;
		end
	end
	else if (state==6) begin
		//RAMAddressByUART <=0;
		next_RAMAddressByUART <=0;
		recieve_counter <=0;
		state <=0;
	end
	else if(state==7)
	begin
		if(EndOperations==1)begin
			state <=4;
		end
	end
end

always @(posedge clk_out)
begin
	if (state == 0)
		begin
			LED0 <= 0; LED1 <= 0; LED2 <= 0; LED3 <= 0; LED4 <= 0; LED5 <= 0; LED6 <= 0;
		end
	if (state == 1)
		begin
			LED0 <= 0; LED1 <= 1; LED2 <= 0; LED3 <= 0; LED4 <= 0; LED5 <= 0; LED6 <= 0;
		end
	if (state == 2)
		begin
			LED0 <= 0; LED1 <= 0; LED2 <= 1; LED3 <= 0; LED4 <= 0; LED5 <= 0; LED6 <= 0;
		end
	if (state == 3)
		begin
			LED0 <= 0; LED1 <= 0; LED2 <= 0; LED3 <= 1; LED4 <= 0; LED5 <= 0; LED6 <= 0;
		end
	if (state == 4)
		begin
			LED0 <= 0; LED1 <= 0; LED2 <= 0; LED3 <= 0; LED4 <= 1; LED5 <= 0; LED6 <= 0;
		end
	if (state == 5)
		begin
			LED0 <= 0; LED1 <= 0; LED2 <= 0; LED3 <= 0; LED4 <= 0; LED5 <= 1; LED6 <= 0;
		end
	if (state == 6)
		begin
			LED0 <= 0; LED1 <= 0; LED2 <= 0; LED3 <= 0; LED4 <= 0; LED5 <= 0; LED6 <= 1;
		end
end

endmodule
