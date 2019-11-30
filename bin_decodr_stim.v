`timescale 1ns / 1ps
module stimulus;
	reg [1:0] x;
	reg enable; 
	wire [3:0] y;
	// Instantiate the Unit Under Test (UUT)
	binary_encoder uut (
		.x(x), 
		.enable(enable),
		.y(y)
	);
 
	initial begin
		// Initialize Inputs
x = 4'b0000; 
enable = 0;    
 
	#20 enable  = 1;
	#20 x = 2'b01;
	#20 x = 2'b10;
	#20 x = 2'b11;
	#40 ;
 
	end  
 
		initial begin
		 $monitor("t=%3d enable=%1b,x=%2b, y=%4b",$time,enable,x,y );
		 end
 
endmodule
