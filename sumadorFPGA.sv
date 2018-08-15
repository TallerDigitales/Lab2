module sumadorFPGA(input logic [3:0] a, b, input logic ci, output logic [6:0] out, output logic co);
		logic [3:0] r;
		sumador4Bits adder(a, b, ci, r, co);
		sevenSegments siete (r, out);
endmodule
