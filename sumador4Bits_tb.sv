module sumador4Bits_tb();
	logic [3:0] a, b, r;
	logic ci, co;
	sumador4Bits dut(a, b, ci, r, co);
	initial begin 
		a = 4'b0000;
		b = 4'b1000;
		ci = 0;
		#10
		a = 4'b1010;
		b = 4'b0101;
		ci = 0;
		#10
		a = 4'b1111;
		b = 4'b0001;
		ci = 0;
		#10;
		a = 4'b1101;
		b = 4'b0001;
		ci = 0;
		#10;
		
		
	end
endmodule



