 // This is my testbench
// Use special verilog commands to implement waveforms and
// evaluate outputs of the device under test


`timescale 1 ns/1 ps
// Here 1 ns is length of the tick
// 1 ps is the precision

module test1_tb();

// specify the inputs and outputs in the testbench
// all inputs to the dut are registers
reg a;
reg b;
reg c;


// all outputs from the dut are wires
wire x;
wire y;


// Ex .a(a) means for the (first a) a from main use the (second a) a in this file
// Device under test
test1 dut(.a(a), .b(b), .c(c), .x(x), .y(y)); // a , b , c , x, ,y


// Specify a test waveform
// if your waveform will only occur once use and initial block to specify
initial
begin
	
	a = 0;
	b = 0;
	c = 0;
	#20;
		
	if (x == 0 & y == 0)
		$display("All outputs are zero");
	
	a = 0;
	b = 0;
	c = 1;
	#20;
	
	if (x == 0 & y == 0)
		$display("All outputs are zero");
	
	a = 0;
	b = 1;
	c = 0;
	#20;

	if (x == 0 & y == 0)
		$display("All outputs are zero");
	
	a = 0;
	b = 1;
	c = 1;
	#20;

	if (x == 0 & y == 0)
		$display("All outputs are zero");

	a = 1;
	b = 0;
	c = 0;
	#20;

	if (x == 0 & y == 0)
		$display("All outputs are zero");
		
	a = 1;
	b = 0;
	c = 1;
	#20;

	if (x == 0 & y == 0)
		$display("All outputs are zero");
		
	a = 1;
	b = 1;
	c = 0;
	#20;

	if (x == 0 & y == 0)
		$display("All outputs are zero");
		
	a = 1;
	b = 1;
	c = 1;
	#20;

	if (x == 0 & y == 0)
		$display("All outputs are zero");
	
end

endmodule
