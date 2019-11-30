`timescale 1ns / 1ps
module stimulus_gate;
	// Inputs
	reg x;
	reg y;
	// Outputs
	wire z;
	// Instantiate the Unit Under Test (UUT)
	gate uut (
		.x(x), 
		.y(y), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;
 
		// Wait 100 ns for global reset to finish
		#100;
		#50 x = 1;
		#60 y = 1;
		#70 y = 1;	
		#80 x = 0;			
	end
		initial begin
         		$monitor("t=%3d x=%2b,y=%2b,z=%d \n",$time,x,y,z, );
		 end
	
endmodule
 
