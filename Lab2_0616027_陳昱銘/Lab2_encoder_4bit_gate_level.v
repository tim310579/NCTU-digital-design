module Lab2_encoder_4bit_gate_level (output [1:0] Aout,output V, input [3:0] D) ;
	wire D0_not,D1_not,D2_not;
	wire P1,P2;
	not (D0_not,D[0]),(D1_not,D[1]),(D2_not,D[2]);
	and 	(Aout[1],D0_not,D1_not),
		(P1,D0_not,D[1]),
		(P2,D0_not,D2_not);
	or 	(Aout[0],P1,P2),
		(V,D[3],D[2],D[1],D[0]);
endmodule 