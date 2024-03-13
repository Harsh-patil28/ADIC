`timescale 1ns/1ps 
module mux(sel,a,b,out);
input sel,a,b;
output out;
reg out;
always @(*) begin
case(sel)
0:out = a;
1:out = b;
endcase
end
endmodule
