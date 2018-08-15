module counter_tb ();
	logic clk, reset;
	logic[1:0] sout1;
	logic[2:0] sout2;
	logic[3:0] sout3;
	counter #(2) counter1(clk,reset,sout1);
	counter #(3) counter2(clk,reset,sout2);
	counter #(4) counter3(clk,reset,sout3);
	/*
	always
		begin
			clk = 1; #10; clk = 0; #10;
		end
	*/	
	initial begin
		reset = 1;
		clk = 1;
		#10;
		
		if(sout1 != 2'b00) $display("Error: At first clock cycle output isn't 00");
		if(sout2 != 3'b000) $display("Error: At first clock cycle output isn't 000");
		if(sout3 != 4'b0000) $display("Error: At first clock cycle output isn't 0000");
		
		reset = 0;
		clk = 0;
		#10;
		
		
		clk = 1;
		#10;
		
		if(sout1 != 2'b01) 
			$display("Error: At second clock cycle output isn't 01");
		if(sout2 != 3'b001) 
			$display("Error: At second clock cycle output isn't 001");
		if(sout3 != 4'b0001) 
			$display("Error: At second clock cycle output isn't 0001");
		
		clk = 0;
		#10;
		
		
		clk = 1;
		#10;
		
		if(sout1 != 2'b10) $display("Error: At third clock cycle output isn't 10");
		if(sout2 != 3'b010) $display("Error: At third clock cycle output isn't 010");
		if(sout3 != 4'b0010) $display("Error: At third clock cycle output isn't 0010");
				
		
		clk = 0;
		#10;
		
		
		clk = 1;
		#10;
		
		
		if(sout1 != 2'b11) $display("Error: At forth clock cycle output isn't 11");
		if(sout2 != 3'b011) $display("Error: At forth clock cycle output isn't 011");
		if(sout3 != 4'b0011) $display("Error: At forth clock cycle output isn't 0011");
		

		clk = 0;
		#10;
		
		
		clk = 1;
		#10;
		
		
		if(sout1 != 2'b00) $display("Error: Clock cycle output isn't 00");
		if(sout2 != 3'b100) $display("Error: Clock cycle output isn't 100");
		if(sout3 != 4'b0100) $display("Error: Clock cycle output isn't 0100");
		

		clk = 0;
		#10;
		
	
	end

	
endmodule
