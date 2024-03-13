`timescale 1ns/1ps
module mux(output reg z,input [1:0] sel,input [3:0]a);
always@(*) begin
case(sel)
2'b00:z = a[0];
2'b01:z = a[1];
2'b10:z = a[2];
2'b11:z = a[3];
endcase
end
endmodule

