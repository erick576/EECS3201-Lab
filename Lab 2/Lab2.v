module Lab2(a,b);

	input [0 : 3] a;
	
	output [0 : 6] b;

	assign b[0] = ~((~a[0] & ~a[1] & a[2] & ~a[3]) | (~a[0] & ~a[1] & a[2] & a[3]) | (~a[0] & a[1] & ~a[2] & a[3]) | (~a[0] & a[1] & a[2] & ~a[3]) | (~a[0] & a[1] & a[2] & a[3]) | (a[0] & ~a[1] & ~a[2] & ~a[3]) | (a[0] & ~a[1] & ~a[2] & a[3]) | (a[0] & ~a[1] & a[2] & ~a[3]) | (a[0] & a[1] & ~a[2] & ~a[3]) | (a[0] & a[1] & a[2] & ~a[3]) | (a[0] & a[1] & a[2] & a[3]) | (~a[0] & ~a[1] & ~a[2] & ~a[3]));
	assign b[1] = ~((~a[0] & ~a[1] & ~a[2] & a[3]) | (~a[0] & ~a[1] & a[2] & ~a[3]) | (~a[0] & ~a[1] & a[2] & a[3]) | (~a[0] & a[1] & ~a[2] & ~a[3]) | (~a[0] & a[1] & a[2] & a[3]) | (a[0] & ~a[1] & ~a[2] & ~a[3]) | (a[0] & ~a[1] & ~a[2] & a[3]) | (a[0] & ~a[1] & a[2] & ~a[3]) | (a[0] & a[1] & ~a[2] & a[3]) | (~a[0] & ~a[1] & ~a[2] & ~a[3]));
	assign b[2] = ~((~a[0] & ~a[1] & ~a[2] & a[3]) | (~a[0] & ~a[1] & a[2] & a[3]) | (~a[0] & a[1] & ~a[2] & ~a[3]) | (~a[0] & a[1] & ~a[2] & a[3]) | (~a[0] & a[1] & a[2] & ~a[3]) | (~a[0] & a[1] & a[2] & a[3]) | (a[0] & ~a[1] & ~a[2] & ~a[3]) | (a[0] & ~a[1] & ~a[2] & a[3]) | (a[0] & ~a[1] & a[2] & ~a[3]) | (a[0] & ~a[1] & a[2] & a[3]) | (a[0] & a[1] & ~a[2] & a[3]) | (~a[0] & ~a[1] & ~a[2] & ~a[3]));
	assign b[3] = ~((~a[0] & ~a[1] & a[2] & ~a[3]) | (~a[0] & ~a[1] & a[2] & a[3]) | (~a[0] & a[1] & ~a[2] & a[3]) | (~a[0] & a[1] & a[2] & ~a[3]) | (a[0] & ~a[1] & ~a[2] & ~a[3]) | (a[0] & ~a[1] & ~a[2] & a[3]) | (a[0] & ~a[1] & a[2] & a[3]) | (a[0] & a[1] & ~a[2] & ~a[3]) | (a[0] & a[1] & ~a[2] & a[3]) | (a[0] & a[1] & a[2] & ~a[3]) | (~a[0] & ~a[1] & ~a[2] & ~a[3]));
	assign b[4] = ~((~a[0] & ~a[1] & a[2] & ~a[3]) | (~a[0] & a[1] & a[2] & ~a[3]) | (a[0] & ~a[1] & ~a[2] & ~a[3]) | (a[0] & ~a[1] & a[2] & ~a[3]) | (a[0] & ~a[1] & a[2] & a[3]) | (a[0] & a[1] & ~a[2] & ~a[3]) | (a[0] & a[1] & ~a[2] & a[3]) | (a[0] & a[1] & a[2] & ~a[3]) | (a[0] & a[1] & a[2] & a[3]) | (~a[0] & ~a[1] & ~a[2] & ~a[3]));
	assign b[5] = ~((~a[0] & a[1] & ~a[2] & ~a[3]) | (~a[0] & a[1] & ~a[2] & a[3]) | (~a[0] & a[1] & a[2] & ~a[3]) | (a[0] & ~a[1] & ~a[2] & ~a[3]) | (a[0] & ~a[1] & ~a[2] & a[3]) | (a[0] & ~a[1] & a[2] & ~a[3]) | (a[0] & ~a[1] & a[2] & a[3]) | (a[0] & a[1] & ~a[2] & ~a[3]) | (a[0] & a[1] & a[2] & ~a[3]) | (a[0] & a[1] & a[2] & a[3]) | (~a[0] & ~a[1] & ~a[2] & ~a[3]));
	
	// Equation Reduction for b[6]:
	// Original expression: (~a[0]~a[1]~a[2]a[3]) + (~a[0]a[1]a[2]a[3]) + (a[0]a[1]~a[2]~a[3]) + (~a[0]~a[1]~a[2]~a[3])
	//								= (~a[0]~a[1]~a[2])(a[3] + ~a[3]) + (~a[0]a[1]a[2]a[3]) + (a[0]a[1]~a[2]~d[3])
	//								(a[3] + ~a[3]) Will always evaluate to true
	//								= (~a[0]~a[1]~a[2])(1) + (~a[0]a[1]a[2]a[3]) + (a[0]a[1]~a[2]~a[3])
	//								= (~a[0]~a[1]~a[2]) + (~a[0]a[1]a[2]a[3]) + (a[0]a[1]~a[2]~a[3])
	// And we have reduced the expression
	assign b[6] = (~a[0] & ~a[1] & ~a[2]) | (~a[0] & a[1] & a[2] & a[3]) | (a[0] & a[1] & ~a[2] & ~a[3]);
	
endmodule