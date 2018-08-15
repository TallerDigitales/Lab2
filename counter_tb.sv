module counter_tb ();
	logic clk, reset;
	logic[1:0] sout1;
	logic[2:0] sout2;
	logic[3:0] sout3;
	counter #(2) counter1(clk,reset,sout1);
	counter #(3) counter2(clk,reset,sout2);
	counter #(4) counter3(clk,reset,sout3);
	
	always
		begin
			clk = 1; #10; clk = 0; #10;
		end
		
	initial begin
		reset = 1;
		#10;
		reset = 0;
		#10;
	
	end

	
endmodule
