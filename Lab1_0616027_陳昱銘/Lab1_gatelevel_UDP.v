module	Lab1_gatelevel_UDP(F ,A ,B ,C ,D );
	output  F;
	input   A,B,C,D;
	wire    w1,w2,w3,w4,w5,w6,w7,w8;
	UDP M0(w8,A,B,C,D);

	
	and  G3(w3,B,D);	
	
	not  G4(w4,A);
	or   G7(w7,w4,w3);
	
	and  G8(F,w8,w7);
	
endmodule
