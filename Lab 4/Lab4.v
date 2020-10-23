module Lab4 (clk, sw, reset, pause, output_1, output_2);

// Will take the counter clock and divider to get the final output
// on the seven segment display based on the value of the counter 
// which is split into two single digit numbers to make it easier to decode

input clk;
input sw;
input reset;
input pause;

wire clk_out;
wire [4 : 0] counter;
wire [3 : 0] ones, tens;

output [6 : 0] output_1;
output [6 : 0] output_2;

ClockDivider cd(clk, clk_out);

down_counter dc(clk_out, counter, sw, reset, pause);

split_value sv(counter, ones, tens);


// Decode Output To Display (Taken from Lab 2 Seven Segment Decoder and modified)

assign output_1[0] = ~((~ones[3] & ~ones[2] & ones[1] & ~ones[0]) | (~ones[3] & ~ones[2] & ones[1] & ones[0]) | (~ones[3] & ones[2] & ~ones[1] & ones[0]) | (~ones[3] & ones[2] & ones[1] & ~ones[0]) | (~ones[3] & ones[2] & ones[1] & ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ones[0]) | (ones[3] & ~ones[2] & ones[1] & ~ones[0]) | (ones[3] & ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ones[2] & ones[1] & ~ones[0]) | (ones[3] & ones[2] & ones[1] & ones[0]) | (~ones[3] & ~ones[2] & ~ones[1] & ~ones[0]));
assign output_1[1] = ~((~ones[3] & ~ones[2] & ~ones[1] & ones[0]) | (~ones[3] & ~ones[2] & ones[1] & ~ones[0]) | (~ones[3] & ~ones[2] & ones[1] & ones[0]) | (~ones[3] & ones[2] & ~ones[1] & ~ones[0]) | (~ones[3] & ones[2] & ones[1] & ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ones[0]) | (ones[3] & ~ones[2] & ones[1] & ~ones[0]) | (ones[3] & ones[2] & ~ones[1] & ones[0]) | (~ones[3] & ~ones[2] & ~ones[1] & ~ones[0]));
assign output_1[2] = ~((~ones[3] & ~ones[2] & ~ones[1] & ones[0]) | (~ones[3] & ~ones[2] & ones[1] & ones[0]) | (~ones[3] & ones[2] & ~ones[1] & ~ones[0]) | (~ones[3] & ones[2] & ~ones[1] & ones[0]) | (~ones[3] & ones[2] & ones[1] & ~ones[0]) | (~ones[3] & ones[2] & ones[1] & ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ones[0]) | (ones[3] & ~ones[2] & ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ones[1] & ones[0]) | (ones[3] & ones[2] & ~ones[1] & ones[0]) | (~ones[3] & ~ones[2] & ~ones[1] & ~ones[0]));	
assign output_1[3] = ~((~ones[3] & ~ones[2] & ones[1] & ~ones[0]) | (~ones[3] & ~ones[2] & ones[1] & ones[0]) | (~ones[3] & ones[2] & ~ones[1] & ones[0]) | (~ones[3] & ones[2] & ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ones[0]) | (ones[3] & ~ones[2] & ones[1] & ones[0]) | (ones[3] & ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ones[2] & ~ones[1] & ones[0]) | (ones[3] & ones[2] & ones[1] & ~ones[0]) | (~ones[3] & ~ones[2] & ~ones[1] & ~ones[0]));
assign output_1[4] = ~((~ones[3] & ~ones[2] & ones[1] & ~ones[0]) | (~ones[3] & ones[2] & ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ones[1] & ones[0]) | (ones[3] & ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ones[2] & ~ones[1] & ones[0]) | (ones[3] & ones[2] & ones[1] & ~ones[0]) | (ones[3] & ones[2] & ones[1] & ones[0]) | (~ones[3] & ~ones[2] & ~ones[1] & ~ones[0]));
assign output_1[5] = ~((~ones[3] & ones[2] & ~ones[1] & ~ones[0]) | (~ones[3] & ones[2] & ~ones[1] & ones[0]) | (~ones[3] & ones[2] & ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ~ones[1] & ones[0]) | (ones[3] & ~ones[2] & ones[1] & ~ones[0]) | (ones[3] & ~ones[2] & ones[1] & ones[0]) | (ones[3] & ones[2] & ~ones[1] & ~ones[0]) | (ones[3] & ones[2] & ones[1] & ~ones[0]) | (ones[3] & ones[2] & ones[1] & ones[0]) | (~ones[3] & ~ones[2] & ~ones[1] & ~ones[0]));
assign output_1[6] = (~ones[3] & ~ones[2] & ~ones[1]) | (~ones[3] & ones[2] & ones[1] & ones[0]) | (ones[3] & ones[2] & ~ones[1] & ~ones[0]);
	

assign output_2[0] = ~((~tens[3] & ~tens[2] & tens[1] & ~tens[0]) | (~tens[3] & ~tens[2] & tens[1] & tens[0]) | (~tens[3] & tens[2] & ~tens[1] & tens[0]) | (~tens[3] & tens[2] & tens[1] & ~tens[0]) | (~tens[3] & tens[2] & tens[1] & tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & tens[0]) | (tens[3] & ~tens[2] & tens[1] & ~tens[0]) | (tens[3] & tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & tens[2] & tens[1] & ~tens[0]) | (tens[3] & tens[2] & tens[1] & tens[0]));
assign output_2[1] = ~((~tens[3] & ~tens[2] & ~tens[1] & tens[0]) | (~tens[3] & ~tens[2] & tens[1] & ~tens[0]) | (~tens[3] & ~tens[2] & tens[1] & tens[0]) | (~tens[3] & tens[2] & ~tens[1] & ~tens[0]) | (~tens[3] & tens[2] & tens[1] & tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & tens[0]) | (tens[3] & ~tens[2] & tens[1] & ~tens[0]) | (tens[3] & tens[2] & ~tens[1] & tens[0]));
assign output_2[2] = ~((~tens[3] & ~tens[2] & ~tens[1] & tens[0]) | (~tens[3] & ~tens[2] & tens[1] & tens[0]) | (~tens[3] & tens[2] & ~tens[1] & ~tens[0]) | (~tens[3] & tens[2] & ~tens[1] & tens[0]) | (~tens[3] & tens[2] & tens[1] & ~tens[0]) | (~tens[3] & tens[2] & tens[1] & tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & tens[0]) | (tens[3] & ~tens[2] & tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & tens[1] & tens[0]) | (tens[3] & tens[2] & ~tens[1] & tens[0]));	
assign output_2[3] = ~((~tens[3] & ~tens[2] & tens[1] & ~tens[0]) | (~tens[3] & ~tens[2] & tens[1] & tens[0]) | (~tens[3] & tens[2] & ~tens[1] & tens[0]) | (~tens[3] & tens[2] & tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & tens[0]) | (tens[3] & ~tens[2] & tens[1] & tens[0]) | (tens[3] & tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & tens[2] & ~tens[1] & tens[0]) | (tens[3] & tens[2] & tens[1] & ~tens[0]));
assign output_2[4] = ~((~tens[3] & ~tens[2] & tens[1] & ~tens[0]) | (~tens[3] & tens[2] & tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & tens[1] & tens[0]) | (tens[3] & tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & tens[2] & ~tens[1] & tens[0]) | (tens[3] & tens[2] & tens[1] & ~tens[0]) | (tens[3] & tens[2] & tens[1] & tens[0]));
assign output_2[5] = ~((~tens[3] & tens[2] & ~tens[1] & ~tens[0]) | (~tens[3] & tens[2] & ~tens[1] & tens[0]) | (~tens[3] & tens[2] & tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & ~tens[1] & tens[0]) | (tens[3] & ~tens[2] & tens[1] & ~tens[0]) | (tens[3] & ~tens[2] & tens[1] & tens[0]) | (tens[3] & tens[2] & ~tens[1] & ~tens[0]) | (tens[3] & tens[2] & tens[1] & ~tens[0]) | (tens[3] & tens[2] & tens[1] & tens[0]));
assign output_2[6] = (~tens[3] & ~tens[2] & ~tens[1]) | (~tens[3] & tens[2] & tens[1] & tens[0]) | (tens[3] & tens[2] & ~tens[1] & ~tens[0]);
	

endmodule

