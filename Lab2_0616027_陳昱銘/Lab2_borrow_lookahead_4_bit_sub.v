module Lab2_borrow_lookahead_sub (output [3:0] Diff, output Bout, input [3:0] X, Y, input Bin);
	wire B1,B2,B3;
	wire P0,P1,P2,P3;
	assign P0=X[0]^Y[0];
	assign P1=X[1]^Y[1];
	assign P2=X[2]^Y[2];
	assign P3=X[3]^Y[3];

	assign B1=(!P0&&Bin)||(!X[0]&&Y[0]);
	assign B2=(!P1&&B1)||(!X[1]&&Y[1]);
	assign B3=(!P2&&B2)||(!X[2]&&Y[2]);
	assign Bout=(!P3&&B3)||(!X[3]&&Y[3]);
	assign Diff[0]=X[0]^Y[0]^Bin;
	assign Diff[1]=X[1]^Y[1]^B1;
	assign Diff[2]=X[2]^Y[2]^B2;
	assign Diff[3]=X[3]^Y[3]^B3;
endmodule 
