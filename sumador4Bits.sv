module sumador4Bits (input logic [3:0] a, b, input logic ci, output logic [3:0] r, output logic co);
	
	logic ci1, ci2, ci3;
	sumador1bit s0 (a[0], b[0], ci, r[0], ci1); /*digito menos significativo*/
	sumador1bit s1 (a[1], b[1], ci1, r[1], ci2);
	sumador1bit s2 (a[2], b[2], ci2, r[2], ci3);
	sumador1bit s3 (a[3], b[3], ci3, r[3], co); /*digito más significativo*/

endmodule