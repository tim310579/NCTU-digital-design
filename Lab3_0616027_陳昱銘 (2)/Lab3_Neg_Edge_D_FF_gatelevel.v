module Lab3_Neg_Edge_D_FF_gatelevel(output Q, NQ, input D, clock);
	wire w1, R, S, w4;
	nor #(2) G4(w4,D,S);
	nor #(2) G1(w1,R,w4);
	nor #(2) G2(R,clock,w1);
	nor #(2) G3(S,clock,R,w4);
	Lab3_SR_Latch_gatelevel X1(Q, NQ, S, R);
endmodule 
