module t_Lab2_encoder_4bit;
	wire [1:0] Aout;
	wire V;
	reg [3:0] D;
	parameter stop_time=1700;
	Lab2_encoder_4bit_gate_level EN1(Aout,V,D);
	Lab2_encoder_4bit_dataflow EN2(Aout,V,D);
	Lab2_encoder_4bit_behavior EN3(Aout,V,D);
	initial #stop_time $finish;
		initial begin
		D=4'b0000;
		repeat(15) #100 D=D+1'b1;
		end
endmodule 