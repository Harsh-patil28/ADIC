module seq_test;
reg clk,x,reset;
wire z;
seq_dec a1(x,clk,reset,z);
initial begin
$dumpfile ("seq.vcd");
$dumpvars (0,seq_test);
clk = 1'b0; 
reset = 1'b1;
#15 reset = 1'b0;
end
always #5 clk= ~clk;
initial begin
#12 x=0; #10 x=0; #10 x=1; #10 x=1;
#10 x=0; #10 x=1; #10 x=1; #10 x=0;
#10 x=0; #10 x=1; #10 x=1; #10 x=0;
#10 $finish;
end
endmodule
