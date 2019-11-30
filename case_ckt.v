module mux_case(out,cntrl,in1,in2);
input cntrl,in1,in2;
output out;
reg out;
 
always @ *
case (cntrl)
1'b0: 
out = in1;
1'b1 :
out = in2;
endcase
endmodule
