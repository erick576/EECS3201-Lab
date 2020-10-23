module split_value(value, ones, tens);

// Idea is to seperate the second and first digits in decimal form 
// so that I can then easily decode the two "Single Digit Numbers" 
// into two seven segment displays easily
	
	input [4 : 0] value;
	
	output reg [3 : 0] tens;
	output reg [3 : 0] ones;	
	reg holder;
	
	always @(value)
		begin
			ones = value % 10;
			tens = (value - (value % 10)) / 10;
		end
    	 
endmodule