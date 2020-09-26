module FourBitAdder(a0, a1, ci, r, co, s);
 
	input [0 : 3] a0;
	input [0 : 3] a1;
	input ci, s;
	
	wire c1, c2, c3;
	wire b0, b1, b2, b3;
	
	output [0 : 3] r;
	output co;
	
	// Addition or Subtraction
	
	// We take the xor of each of the addend or subtractend so that the
	// select bit will flip the values if we are having subtraction
	xor(b3, a1[3], s);
	xor(b2, a1[2], s);
	xor(b1, a1[1], s);
	xor(b0, a1[0], s);
	
	// We then add the s into the carry in initially to get the + 1 on the 2's complement 
	// if it is a subtraction. If it isnt then the carry will just be 0 initially and we proceed
	
	// Then the carry form each full adder are wired together to create a ripple carry adder/subtractor
	FullAdder f1(a0[3], b3, s, r[3], c1);
	FullAdder f2(a0[2], b2, c1, r[2], c2);
	FullAdder f3(a0[1], b1, c2, r[1], c3);
	FullAdder f4(a0[0], b0, c3, r[0], co);
	
endmodule
