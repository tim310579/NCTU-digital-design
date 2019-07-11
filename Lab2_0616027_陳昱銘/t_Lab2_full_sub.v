module  t_Lab2_full_sub;
	wire D,B;
	reg x,y,z;
	parameter stop_time=900;
	Lab2_full_sub S1(D,B,x,y,z);
	initial #stop_time $finish;
		initial begin 
		x=0;y=0;z=0;
		#100 z=1;
		#100 y=1;z=0;
		#100 z=1;
		#100 x=1;y=0;z=0;
		#100 z=1;
		#100 y=1;z=0;
		#100 z=1;
		end
endmodule
