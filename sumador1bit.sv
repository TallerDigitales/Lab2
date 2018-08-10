module sumador1bit (input logic a, b, ci, 
							output logic r, co);

    logic abTemp;
	 
	 assign abTemp = (a ^ b); 
	 assign r= (abTemp ^ ci); /*resultado*/
	 assign co=((a & b) | (abTemp & ci)); /* carry de salida*/ 
	 
endmodule
