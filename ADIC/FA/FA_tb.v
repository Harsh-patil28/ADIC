`timescale 1ns/1ps 
module FA_test;
reg a,b,c;
wire sum,cout;
FA x(a,b,c,sum,cout);
initial begin
a=0; b=0; c=0;
#25;
a=0; b=1; c=0;
#25;
a=1; b=0; c=0;
#25;
a=1; b=1; c=0;
#25;
a=0; b=0; c=1;
#25;
a=0; b=1; c=1;
#25;
a=1; b=0; c=1;
#25;
a=1; b=1; c=1;
#25;
end
endmodule
