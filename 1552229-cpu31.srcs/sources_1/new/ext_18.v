`timescale 1ns / 1ps
module ext_18#(parameter WIDTH =18)(
    input [WIDTH-1:0] a,
	 input sext,
	 output [31:0] b
    );
    assign b= sext?{{(32-WIDTH){a[WIDTH-1]}},a}:{{(32-WIDTH){1'b0}},a};

endmodule
