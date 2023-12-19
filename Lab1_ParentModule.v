// This module instantiates Lab1.v or ASCII27Seg to display "Hello" and "NP"
module ASCIICodes(input Kkey0, output [6:0] HexSeg4, HexSeg3, HexSeg2, HexSeg1, HexSeg0);
	reg [7:0] Message [4:0];
	always @ (*) begin
		Message[4] = "H";
		Message[3] = "e";
		Message[2] = "l";
		Message[1] = "l";
		Message[0] = "o";
		
		case(Kkey0)
			1'b1 : begin
				Message[4] = "H";
				Message[3] = "e";
				Message[2] = "l";
				Message[1] = "l";
				Message[0] = "o";
			end
			1'b0 : begin
				Message[4] = "N";
				Message[3] = "P";
				Message[2] = "";
				Message[1] = "";
				Message[0] = "";
			end
			default : begin
				Message[4] = "H";
				Message[3] = "e";
				Message[2] = "l";
				Message[1] = "l";
				Message[0] = "o";
			end
		endcase
	end
	ASCII27Seg SevH4 (Message[4], HexSeg4);
	ASCII27Seg SevH3 (Message[3], HexSeg3);
	ASCII27Seg SevH2 (Message[2], HexSeg2);
	ASCII27Seg SevH1 (Message[1], HexSeg1);
	ASCII27Seg SevH0 (Message[0], HexSeg0);
endmodule
				