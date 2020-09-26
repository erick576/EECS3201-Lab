module Lab3(a0, a1, s, result, a0_output, a1_output, result_output, cout, cout_output);

	input [0 : 3] a0; 
	input [0 : 3] a1;
	input s;
	
	output cout;
	output [0 : 3] result;
	output [0 : 6] a0_output; 
	output [0 : 6] a1_output; 
	output [0 : 6] result_output;
	output [0 : 6] cout_output;
	
	// Use the FourBitAdder Module to complete the operation
	FourBitAdder f1(a0, a1, 0, result, cout, s);

	
	// Took these 7 Digit Decoders from my Lab 2 for the a0_output and a1_output
	
	// Display a0_output
	assign a0_output[0] = ~((~a0[0] & ~a0[1] & a0[2] & ~a0[3]) | (~a0[0] & ~a0[1] & a0[2] & a0[3]) | (~a0[0] & a0[1] & ~a0[2] & a0[3]) | (~a0[0] & a0[1] & a0[2] & ~a0[3]) | (~a0[0] & a0[1] & a0[2] & a0[3]) | (a0[0] & ~a0[1] & ~a0[2] & ~a0[3]) | (a0[0] & ~a0[1] & ~a0[2] & a0[3]) | (a0[0] & ~a0[1] & a0[2] & ~a0[3]) | (a0[0] & a0[1] & ~a0[2] & ~a0[3]) | (a0[0] & a0[1] & a0[2] & ~a0[3]) | (a0[0] & a0[1] & a0[2] & a0[3]) | (~a0[0] & ~a0[1] & ~a0[2] & ~a0[3]));
	assign a0_output[1] = ~((~a0[0] & ~a0[1] & ~a0[2] & a0[3]) | (~a0[0] & ~a0[1] & a0[2] & ~a0[3]) | (~a0[0] & ~a0[1] & a0[2] & a0[3]) | (~a0[0] & a0[1] & ~a0[2] & ~a0[3]) | (~a0[0] & a0[1] & a0[2] & a0[3]) | (a0[0] & ~a0[1] & ~a0[2] & ~a0[3]) | (a0[0] & ~a0[1] & ~a0[2] & a0[3]) | (a0[0] & ~a0[1] & a0[2] & ~a0[3]) | (a0[0] & a0[1] & ~a0[2] & a0[3]) | (~a0[0] & ~a0[1] & ~a0[2] & ~a0[3]));
	assign a0_output[2] = ~((~a0[0] & ~a0[1] & ~a0[2] & a0[3]) | (~a0[0] & ~a0[1] & a0[2] & a0[3]) | (~a0[0] & a0[1] & ~a0[2] & ~a0[3]) | (~a0[0] & a0[1] & ~a0[2] & a0[3]) | (~a0[0] & a0[1] & a0[2] & ~a0[3]) | (~a0[0] & a0[1] & a0[2] & a0[3]) | (a0[0] & ~a0[1] & ~a0[2] & ~a0[3]) | (a0[0] & ~a0[1] & ~a0[2] & a0[3]) | (a0[0] & ~a0[1] & a0[2] & ~a0[3]) | (a0[0] & ~a0[1] & a0[2] & a0[3]) | (a0[0] & a0[1] & ~a0[2] & a0[3]) | (~a0[0] & ~a0[1] & ~a0[2] & ~a0[3]));	
	assign a0_output[3] = ~((~a0[0] & ~a0[1] & a0[2] & ~a0[3]) | (~a0[0] & ~a0[1] & a0[2] & a0[3]) | (~a0[0] & a0[1] & ~a0[2] & a0[3]) | (~a0[0] & a0[1] & a0[2] & ~a0[3]) | (a0[0] & ~a0[1] & ~a0[2] & ~a0[3]) | (a0[0] & ~a0[1] & ~a0[2] & a0[3]) | (a0[0] & ~a0[1] & a0[2] & a0[3]) | (a0[0] & a0[1] & ~a0[2] & ~a0[3]) | (a0[0] & a0[1] & ~a0[2] & a0[3]) | (a0[0] & a0[1] & a0[2] & ~a0[3]) | (~a0[0] & ~a0[1] & ~a0[2] & ~a0[3]));
	assign a0_output[4] = ~((~a0[0] & ~a0[1] & a0[2] & ~a0[3]) | (~a0[0] & a0[1] & a0[2] & ~a0[3]) | (a0[0] & ~a0[1] & ~a0[2] & ~a0[3]) | (a0[0] & ~a0[1] & a0[2] & ~a0[3]) | (a0[0] & ~a0[1] & a0[2] & a0[3]) | (a0[0] & a0[1] & ~a0[2] & ~a0[3]) | (a0[0] & a0[1] & ~a0[2] & a0[3]) | (a0[0] & a0[1] & a0[2] & ~a0[3]) | (a0[0] & a0[1] & a0[2] & a0[3]) | (~a0[0] & ~a0[1] & ~a0[2] & ~a0[3]));
	assign a0_output[5] = ~((~a0[0] & a0[1] & ~a0[2] & ~a0[3]) | (~a0[0] & a0[1] & ~a0[2] & a0[3]) | (~a0[0] & a0[1] & a0[2] & ~a0[3]) | (a0[0] & ~a0[1] & ~a0[2] & ~a0[3]) | (a0[0] & ~a0[1] & ~a0[2] & a0[3]) | (a0[0] & ~a0[1] & a0[2] & ~a0[3]) | (a0[0] & ~a0[1] & a0[2] & a0[3]) | (a0[0] & a0[1] & ~a0[2] & ~a0[3]) | (a0[0] & a0[1] & a0[2] & ~a0[3]) | (a0[0] & a0[1] & a0[2] & a0[3]) | (~a0[0] & ~a0[1] & ~a0[2] & ~a0[3]));
	assign a0_output[6] = (~a0[0] & ~a0[1] & ~a0[2]) | (~a0[0] & a0[1] & a0[2] & a0[3]) | (a0[0] & a0[1] & ~a0[2] & ~a0[3]);
	
	// Display a1_output
	assign a1_output[0] = ~((~a1[0] & ~a1[1] & a1[2] & ~a1[3]) | (~a1[0] & ~a1[1] & a1[2] & a1[3]) | (~a1[0] & a1[1] & ~a1[2] & a1[3]) | (~a1[0] & a1[1] & a1[2] & ~a1[3]) | (~a1[0] & a1[1] & a1[2] & a1[3]) | (a1[0] & ~a1[1] & ~a1[2] & ~a1[3]) | (a1[0] & ~a1[1] & ~a1[2] & a1[3]) | (a1[0] & ~a1[1] & a1[2] & ~a1[3]) | (a1[0] & a1[1] & ~a1[2] & ~a1[3]) | (a1[0] & a1[1] & a1[2] & ~a1[3]) | (a1[0] & a1[1] & a1[2] & a1[3]) | (~a1[0] & ~a1[1] & ~a1[2] & ~a1[3]));
	assign a1_output[1] = ~((~a1[0] & ~a1[1] & ~a1[2] & a1[3]) | (~a1[0] & ~a1[1] & a1[2] & ~a1[3]) | (~a1[0] & ~a1[1] & a1[2] & a1[3]) | (~a1[0] & a1[1] & ~a1[2] & ~a1[3]) | (~a1[0] & a1[1] & a1[2] & a1[3]) | (a1[0] & ~a1[1] & ~a1[2] & ~a1[3]) | (a1[0] & ~a1[1] & ~a1[2] & a1[3]) | (a1[0] & ~a1[1] & a1[2] & ~a1[3]) | (a1[0] & a1[1] & ~a1[2] & a1[3]) | (~a1[0] & ~a1[1] & ~a1[2] & ~a1[3]));
	assign a1_output[2] = ~((~a1[0] & ~a1[1] & ~a1[2] & a1[3]) | (~a1[0] & ~a1[1] & a1[2] & a1[3]) | (~a1[0] & a1[1] & ~a1[2] & ~a1[3]) | (~a1[0] & a1[1] & ~a1[2] & a1[3]) | (~a1[0] & a1[1] & a1[2] & ~a1[3]) | (~a1[0] & a1[1] & a1[2] & a1[3]) | (a1[0] & ~a1[1] & ~a1[2] & ~a1[3]) | (a1[0] & ~a1[1] & ~a1[2] & a1[3]) | (a1[0] & ~a1[1] & a1[2] & ~a1[3]) | (a1[0] & ~a1[1] & a1[2] & a1[3]) | (a1[0] & a1[1] & ~a1[2] & a1[3]) | (~a1[0] & ~a1[1] & ~a1[2] & ~a1[3]));	
	assign a1_output[3] = ~((~a1[0] & ~a1[1] & a1[2] & ~a1[3]) | (~a1[0] & ~a1[1] & a1[2] & a1[3]) | (~a1[0] & a1[1] & ~a1[2] & a1[3]) | (~a1[0] & a1[1] & a1[2] & ~a1[3]) | (a1[0] & ~a1[1] & ~a1[2] & ~a1[3]) | (a1[0] & ~a1[1] & ~a1[2] & a1[3]) | (a1[0] & ~a1[1] & a1[2] & a1[3]) | (a1[0] & a1[1] & ~a1[2] & ~a1[3]) | (a1[0] & a1[1] & ~a1[2] & a1[3]) | (a1[0] & a1[1] & a1[2] & ~a1[3]) | (~a1[0] & ~a1[1] & ~a1[2] & ~a1[3]));
	assign a1_output[4] = ~((~a1[0] & ~a1[1] & a1[2] & ~a1[3]) | (~a1[0] & a1[1] & a1[2] & ~a1[3]) | (a1[0] & ~a1[1] & ~a1[2] & ~a1[3]) | (a1[0] & ~a1[1] & a1[2] & ~a1[3]) | (a1[0] & ~a1[1] & a1[2] & a1[3]) | (a1[0] & a1[1] & ~a1[2] & ~a1[3]) | (a1[0] & a1[1] & ~a1[2] & a1[3]) | (a1[0] & a1[1] & a1[2] & ~a1[3]) | (a1[0] & a1[1] & a1[2] & a1[3]) | (~a1[0] & ~a1[1] & ~a1[2] & ~a1[3]));
	assign a1_output[5] = ~((~a1[0] & a1[1] & ~a1[2] & ~a1[3]) | (~a1[0] & a1[1] & ~a1[2] & a1[3]) | (~a1[0] & a1[1] & a1[2] & ~a1[3]) | (a1[0] & ~a1[1] & ~a1[2] & ~a1[3]) | (a1[0] & ~a1[1] & ~a1[2] & a1[3]) | (a1[0] & ~a1[1] & a1[2] & ~a1[3]) | (a1[0] & ~a1[1] & a1[2] & a1[3]) | (a1[0] & a1[1] & ~a1[2] & ~a1[3]) | (a1[0] & a1[1] & a1[2] & ~a1[3]) | (a1[0] & a1[1] & a1[2] & a1[3]) | (~a1[0] & ~a1[1] & ~a1[2] & ~a1[3]));
	assign a1_output[6] = (~a1[0] & ~a1[1] & ~a1[2]) | (~a1[0] & a1[1] & a1[2] & a1[3]) | (a1[0] & a1[1] & ~a1[2] & ~a1[3]);
	
	// Here we check if the switch s is 1 or 0 and if the cout is 1 or 0 
	// cout = 0 & s = 1 -> - should appear on HEX1
	// cout = 1 & s = 1 -> HEX1 should be blank
	// cout = 0 & s = 0 -> HEX1 should be blank
	// cout = 1 & s = 0 -> 1 should appear on HEX1

	// Display cout_output
	assign cout_output[0] = 1;
	assign cout_output[1] = ~(cout & ~s);
	assign cout_output[2] = ~(cout & ~s);
	assign cout_output[3] = 1;
	assign cout_output[4] = 1;
	assign cout_output[5] = 1;
	assign cout_output[6] = ~(~cout & s);
	
	// Here I remade my decoder from lab 2 for simplicity and did the minterms from the 0 values since the
	// Seven digits are on from 0 which is why they look different from above
	// I also added another seven digit decoder with the same method I just mentioned for the 2s complement + 1
	// On negative values from hex. That is what the XOR seperates on each expression so if the value is positive
	// Then it will take the first decoded expression result and if it is negative
	// Then it will take the second decoded expression result
	
	
	// Display result_output
	assign result_output[0] = (((~result[0] & ~result[1] & ~result[2] & result[3]) | (~result[0] & result[1] & ~result[2] & ~result[3]) | (result[0] & ~result[1] & result[2] & result[3]) | (result[0] & result[1] & ~result[2] & result[3])) & ((cout & s) | ~s)) 
										^ (((~result[0] & ~result[1] & result[2] & result[3]) | (~result[0] & result[1] & ~result[2] & result[3]) | (result[0] & result[1] & ~result[2] & ~result[3]) | (result[0] & result[1] & result[2] & result[3])) & (~cout & s));
										
	assign result_output[1] = (((~result[0] & result[1] & ~result[2] & result[3]) | (~result[0] & result[1] & result[2] & ~result[3]) | (result[0] & ~result[1] & result[2] & result[3]) | (result[0] & result[1] & ~result[2] & ~result[3]) | (result[0] & result[1] & result[2] & ~result[3]) | (result[0] & result[1] & result[2] & result[3])) & ((cout & s) | ~s))
										^ (((~result[0] & ~result[1] & ~result[2] & result[3]) | (~result[0] & ~result[1] & result[2] & ~result[3]) | (~result[0] & result[1] & ~result[2] & ~result[3]) | (~result[0] & result[1] & ~result[2] & result[3]) | (result[0] & ~result[1] & result[2] & ~result[3]) | (result[0] & ~result[1] & result[2] & result[3])) & (~cout & s));
										
	assign result_output[2] = (((~result[0] & ~result[1] & result[2] & ~result[3]) | (result[0] & result[1] & ~result[2] & ~result[3]) | (result[0] & result[1] & result[2] & ~result[3]) | (result[0] & result[1] & result[2] & result[3])) & ((cout & s) | ~s))
										^ (((~result[0] & ~result[1] & ~result[2] & result[3]) | (~result[0] & ~result[1] & result[2] & ~result[3]) | (~result[0] & result[1] & ~result[2] & ~result[3]) | (result[0] & result[1] & result[2] & ~result[3])) & (~cout & s));
										
	assign result_output[3] = (((~result[0] & ~result[1] & ~result[2] & result[3]) | (~result[0] & result[1] & ~result[2] & ~result[3]) | (~result[0] & result[1] & result[2] & result[3]) | (result[0] & ~result[1] & result[2] & ~result[3]) | (result[0] & result[1] & result[2] & result[3])) & ((cout & s) | ~s))
										^ (((~result[0] & ~result[1] & ~result[2] & result[3]) | (~result[0] & result[1] & result[2] & ~result[3]) | (result[0] & ~result[1] & ~result[2] & result[3]) | (result[0] & result[1] & ~result[2] & ~result[3]) | (result[0] & result[1] & result[2] & result[3])) & (~cout & s));
										
	assign result_output[4] = (((~result[0] & ~result[1] & ~result[2] & result[3]) | (~result[0] & ~result[1] & result[2] & result[3]) | (~result[0] & result[1] & ~result[2] & ~result[3]) | (~result[0] & result[1] & ~result[2] & result[3]) | (~result[0] & result[1] & result[2] & result[3]) | (result[0] & ~result[1] & ~result[2] & result[3])) & ((cout & s) | ~s)) 
										^ (((~result[0] & result[1] & result[2] & result[3]) | (result[0] & ~result[1] & ~result[2] & result[3]) | (result[0] & ~result[1] & result[2] & result[3]) | (result[0] & result[1] & ~result[2] & ~result[3]) | (result[0] & result[1] & ~result[2] & result[3]) | (result[0] & result[1] & result[2] & result[3])) & (~cout & s));
										
	assign result_output[5] = (((~result[0] & ~result[1] & ~result[2] & result[3]) | (~result[0] & ~result[1] & result[2] & ~result[3]) | (~result[0] & ~result[1] & result[2] & result[3]) | (~result[0] & result[1] & result[2] & result[3]) | (result[0] & result[1] & ~result[2] & result[3])) & ((cout & s) | ~s))
										^ (((~result[0] & ~result[1] & result[2] & result[3]) | (result[0] & ~result[1] & ~result[2] & result[3]) | (result[0] & result[1] & ~result[2] & result[3]) | (result[0] & result[1] & result[2] & ~result[3]) | (result[0] & result[1] & result[2] & result[3])) & (~cout & s));
										
	assign result_output[6] = (((~result[0] & ~result[1] & ~result[2]) | (~result[0] & result[1] & result[2] & result[3]) | (result[0] & result[1] & ~result[2] & ~result[3])) & ((cout & s) | ~s))
										^ (((~result[0] & result[1] & ~result[2] & ~result[3]) | (result[0] & ~result[1] & ~result[2] & result[3]) | (result[0] & result[1] & result[2] & result[3])) & (~cout & s));
	
		
endmodule