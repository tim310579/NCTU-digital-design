module  t_Lab2_4_bit_sub;
	wire [3:0] Diff;
	wire Bout;
	reg [3:0] X;
	reg [3:0] Y;
	reg Bin;
	parameter stop_time=700;
	
	Lab2_ripple_borrow_4_bit_sub SUB1( Diff,Bout,  X,Y, Bin);
	
	Lab2_borrow_lookahead_sub SUB2( Diff,Bout,  X,Y, Bin);
	initial #stop_time $finish;
		initial begin
		X=4'b1100;Y=4'b0101;Bin=1;
		#100 X=4'b1101;Y=4'b0110;Bin=0;
		#100 X=4'b0101;Y=4'b1101;Bin=0;
		#100 X=4'b0110;Y=4'b1101;Bin=1;
		#100 X=4'b1001;Y=4'b1001;Bin=0;
		#100 X=4'b0101;Y=4'b0101;Bin=1;
		end
	
endmodule 
