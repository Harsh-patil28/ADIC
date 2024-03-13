`timescale 1ns/1ps 
module mux_test;
reg sel,a,b;
wire out;
mux x(sel,a,b,out);
initial begin
sel = 0; a = 0 ; b = 1;
#25;
sel = 1;a = 0; b = 1;
#25;
end
endmodule
