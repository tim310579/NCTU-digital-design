module Lab2_half_sub_gate_level(output D, B, input x, y);
	wire w1;
	xor G1(D,x,y);
	not G2(w1,x);
	and G3(B,w1,y);
endmodule
