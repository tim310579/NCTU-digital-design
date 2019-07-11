module Lab2_encoder_4bit_behavior(output reg [1:0] Aout,output reg V, input [3:0] D);
	always@(D[3],D[2],D[1],D[0])
	begin
	V=D[0]||D[1]||D[2]||D[3];
	if (D[0]==1'b1)
		Aout=2'b00;
	else if (D[1]==1'b1)
		Aout=2'b01;
	else if (D[2]==1'b1)
		Aout=2'b10;
	else 
		Aout=2'b11;
	end
endmodule 