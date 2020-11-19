  // This is my testbench
// Use special verilog commands to implement waveforms and
// evaluate outputs of the device under test


`timescale 1 ns/1 ps
// Here 1 ns is length of the tick
// 1 ps is the precision

module test2_tb();

// specify the inputs and outputs in the testbench
// all inputs to the dut are registers
reg clk;
reg a;


// all outputs from the dut are wires
wire[3 : 0] r;


// Device under test
test2 dut(.clk(clk), .a(a), .r(r)); // clk, a, r


// Specify a test waveform
// if your waveform will only occur once use and initial block to specify
// this will set up a clock with 10 ns high and low, repeated forever
initial
begin
	a = 0;
	
	#100;
	
	a = 1;
	
	#200;
		
	a = 0;
end

always
begin
	clk = 1'b1;
	#10;
	clk = 1'b0;
	#10;
end

always @(posedge clk)
begin
	if (r == 4'd0)
		$display("All outputs are zero");	
end

endmodule
