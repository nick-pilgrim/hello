//This code instantiates ASCII27Seg or ASCII_to_7_bit_Hex.v to display numbers 0-9 converted from Decimal to HexSeg
//This module converts from decimal to HexSeg
module Decimal_to_hex(input [7:0] Decimal, output reg [6:0] HexSeg);
	always @ (*) begin
		HexSeg = 7'd0;
		case(Decimal)
			8'h0 : HexSeg = 7'b1000000;
			8'h1 : HexSeg = 7'b1111001;
			8'h2 : HexSeg = 7'b0100100; // 2
			8'h3 : HexSeg = 7'b0110000; // 3
			8'h4 : HexSeg = 7'b0011001; // 4
			8'h5 : HexSeg = 7'b0010010; // 5
			8'h6 : HexSeg = 7'b0000010; // 6
			8'h7 : HexSeg = 7'b1111000; // 7
			8'h8 : HexSeg = 7'b0000000; // 8
			8'h9 : HexSeg = 7'b0010000; // 9
		endcase
	end
endmodule

//This module is the test bench that instantiates ASCII27Seg or ASCII_to_7_bit_Hex.v
module dec_numb_tb();
reg [7:0] Decimal;
wire [6:0] HexSeg;
Decimal_to_hex A2(Decimal, HexSeg);

initial begin
	Decimal = 8'h0; #10;
	Decimal = 8'h1; #10;
	Decimal = 8'h2; #10;
	Decimal = 8'h3; #10;
	Decimal = 8'h4; #10;
	Decimal = 8'h5; #10;
	Decimal = 8'h6; #10;
	Decimal = 8'h7; #10;
	Decimal = 8'h8; #10;
	Decimal = 8'h9; #10;
end 
endmodule 