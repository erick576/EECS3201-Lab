module FullAdder(a0, a1, ci, r, co);
 
	input a0, a1, ci;
	
	output r, co;
	
	//	Used the minterm functions from the lecture notes
	assign r = a0 ^ a1 ^ ci;
	assign co = (a0 ^ a1) & ci | a0 & a1;

endmodule
