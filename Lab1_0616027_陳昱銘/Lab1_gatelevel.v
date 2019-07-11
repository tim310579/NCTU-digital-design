module	Lab1_gatelevel(F ,A ,B ,C ,D );
	output  F;
	input   A,B,C,D;
	wire    w1,w2,w3,w4,w5,w6,w7;

	and  G1(w1,A,B);
	and  G2(w2,C,w5);
	and  G3(w3,B,D);	
	and  G8(F,w6,w7);
	not  G4(w4,A);
	not  G5(w5,D);
	or   G6(w6,w1,w2);
	or   G7(w7,w4,w3);
	
	
	
endmodule

