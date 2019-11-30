module  priory_encoder_case
(
input wire  [4:1] x,
output reg  [2:0]  pcode 
);
always  @ *
 
case  (x)
4'b1000, 4'b1001 , 4'b1010, 4'b1011 , 4'b1100 , 4'b1101, 4'b1110 , 4'b1111 :
pcode  = 3'b100;
4'b0100, 4'b0101 , 4'b0110, 4'b0111 :
pcode  =  3'b011 ;
4'b0010, 4'b0011 :
pcode  =  3'b010;
4'b0001 :
pcode =  3'b001;
4'b0000  : 
pcode = 3'b000;
endcase
 
endmodule
