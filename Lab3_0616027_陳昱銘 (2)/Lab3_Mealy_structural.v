module Lab3_Mealy_structural (output z,input x, clock, reset);
	wire JA, KA, JB, KB;
	wire A, NA, B, NB;
	wire Nx;
	assign Nx = ~x;
	assign JA = B ^ x;
	assign KA = Nx;
	assign JB = NA || x;
	assign KB = NA && Nx;

	assign z = NB && Nx;
	JK_ff_AR JKA(A, NA, JA, KA, clock, reset);
	JK_ff_AR JKB(B, NB, JB, KB, clock, reset);
endmodule
