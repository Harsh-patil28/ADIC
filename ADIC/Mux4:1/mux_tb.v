`timescale 1ns/1ps
module mux_test;
reg [1:0]sel;
reg [3:0]a;
wire z;
mux m1(z,sel,a);
initial begin
sel = 2'b00 ; a[0] = 1; a[1] = 0; a[2] = 0; a[3] = 0;
#25;
sel = 2'b01 ; a[0] = 0; a[1] = 1; a[2] = 0; a[3] = 0;
#25;
sel = 2'b10 ; a[0] = 0; a[1] = 0; a[2] = 1; a[3] = 0;
#25;
sel = 2'b11 ; a[0] = 0; a[1] = 0; a[2] = 0; a[3] = 1;
#25;
end
endmodule
