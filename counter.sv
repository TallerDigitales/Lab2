module counter #(parameter bus = 4)
	(input logic clk,input logic reset, output logic[bus-1:0] q);
	logic[bus-1:0] d;
	assign d[bus-1:0] = '0;
	always_ff@(posedge clk)
		begin
			if(q[bus-1:0] === '1 || q[bus-1:0] === 'X || reset) 
				q[bus-1:0] <= '0;
			else 
				q <= q + 1'b1;
		end
endmodule
