module counter #(parameter bus = 4)
	(input logic clk,input logic reset, output logic[bus-1:0] q);
	logic[bus-1:0] d;
	logic carryout,cin;
	adder #(bus) _adder(d,0,cin,q,carryout);
	always_ff@(posedge clk)
		begin
			if(q[bus-1:0] === 'X || reset) 
				begin
					d[bus-1:0] <= '1;
					cin <=1;
				end
			else if (carryout)
				begin
					d[bus-1:0] <= '0;
					cin <=1;
				end
			else 
				begin 
					d <= q;
					cin <= 1;
				end
		end
endmodule
