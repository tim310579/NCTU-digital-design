module Lab3_SR_Latch_gatelevel(output Q, NQ, input S, R);
	nor #(2) G1(Q,R,NQ);
	nor #(2) G2(NQ,Q,S);
endmodule
