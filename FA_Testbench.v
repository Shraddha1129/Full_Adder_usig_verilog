`timescale 1ns / 1ps

module FA_Testbench_v;
// Inputs
	 wire A;
	 wire B;
	 wire Cin;

	// Outputs
	wire Sum;
	wire Carry;

	// Instantiate the Unit Under Test (UUT)
	FA uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Carry(Carry)
	);
	initial begin
		A = 0; B = 0; Cin = 0; #10; //Test cases for different inputs
		A = 0; B = 0; Cin = 1; #10;
   	A = 0; B = 1; Cin = 0; #10;
		A = 0; B = 1; Cin = 1; #10;
		A = 1; B = 0; Cin = 0; #10;
		A = 1; B = 0; Cin = 1; #10;
		A = 1; B = 1; Cin = 0; #10;
		A = 1; B = 1; Cin = 1; #10;
		$display("Test completed ");
		$finish;
	end      
endmodule

