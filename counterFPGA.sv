module counterFPGA(input logic clk, reset, output logic [6:0] Output);
		
	logic[2:0] sout;
	counter#(3) contador(clk,reset,sout);
	
	sevenSegments siete({1'b0, sout[2:0]}, Output);
	

endmodule
