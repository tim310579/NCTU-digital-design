module t_Lab3_Mealy;
	wire z;
	reg x, clock, reset;
	Lab3_Mealy_state_diagram M1(z, x, clock, reset);
	Lab3_Mealy_structural M2   (z, x, clock, reset);
	initial #400 $finish;
	initial begin
		reset = 0;
		clock = 0;
		#20 reset = 1;
		repeat(20)
		#20 clock = ~clock;
		//forever #20 clock = ~clock;
	end
	
	initial fork
		x = 0;
		#20 x= 0;
		#60 x = 1;
		#100 x = 0;
		#180 x = 1;
		#260 x = 0;
		#340 x = 1;
	join
endmodule
