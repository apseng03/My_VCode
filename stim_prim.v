`timescale 1ns / 1ps
module stimulus_primitive;
	// Inputs
  reg[1:0] x;
  reg[1:0] y;
	// Outputs
	wire z;
	// Instantiate the Unit Under Test (UUT)
	comparator uut (
		.x(x), 
		.y(y), 
		.z(z)
	);
 
	initial begin
	$dumpfile("test.vcd");
    $dumpvars(0,stimulus_primitive);
		// Initialize Inputs
		x = 0;
		y = 0;
	#20 x = 1;
	#20 y = 1;
	#20 y = 3;	
	#20 x = 3;
	#20 x = 2;	
	#20 y = 2;	
    #20 y = 1;
    #20 y = 0;  
 
	#40 ;
 
	end  
 
		initial begin
          $monitor("t=%3d x=%2b,y=%2b,z=%d \n",$time,x,y,z, );
		 end
 
endmodule
