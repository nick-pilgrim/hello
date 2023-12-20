//Code that converts ASCIICode to Hex format
module ASCII27Seg(input [7:0] AsciiCode, output reg [6:0] HexSeg);
	always@(*) begin
		//HexSeg = 7'd0;
		//$display("AsciiCode %b", AsciiCode);
		case(AsciiCode)
			// 0 in the 7 bit number of HexSeg represents the leds which will be on
			// 1 Represents the leds which will be off
			//HexSeg positions are 7'b[6][5][4][3][2][1][0]
			8'h41 : HexSeg = 7'b0001000; //A
			8'h61 : HexSeg = 7'b0001000; //a

			8'h42 : HexSeg = 7'b0000011; // B
			8'h62 : HexSeg = 7'b0000011; // b

			8'h43 : HexSeg = 7'b1000110; // C 1000110
			8'h63 : HexSeg = 7'b1000110; // c

			8'h44 : HexSeg = 7'b0100001; // D 0100001
			8'h64 : HexSeg = 7'b0100001; // d

			8'h45 : HexSeg = 7'b0000110; // E
			8'h65 : HexSeg = 7'b0000110; // e

			8'h46 : HexSeg = 7'b0001110; // F
			8'h66 : HexSeg = 7'b0001110; // f

			8'h47 : HexSeg = 7'b0010000; // G
			8'h67 : HexSeg = 7'b0010000; // g

			8'h48 : HexSeg = 7'b0001001; // H
			8'h68 : HexSeg = 7'b0001001; // h

			8'h49 : HexSeg = 7'b1001111; // I
			8'h69 : HexSeg = 7'b1001111; // i

			8'h4A : HexSeg = 7'b1100001; // J
			8'h6A : HexSeg = 7'b1100001; // j

			8'h4B : HexSeg = 7'b0001001; // K
			8'h6B : HexSeg = 7'b0001001; // k

			8'h4C : HexSeg = 7'b1000111; // L
			8'h6C : HexSeg = 7'b1000111; // l

			8'h4D : HexSeg = 7'b1101010; // M 1101010
			8'h6D : HexSeg = 7'b1101010; // m

			8'h4E : HexSeg = 7'b0101011; // N 0101011
			8'h6E : HexSeg = 7'b0101011; // n

			8'h4F : HexSeg = 7'b1000000; // O
			8'h6F : HexSeg = 7'b1000000; // o

			8'h50 : HexSeg = 7'b0001100; // P
			8'h70 : HexSeg = 7'b0001100; // p

			8'h51 : HexSeg = 7'b0011000; // Q
			8'h71 : HexSeg = 7'b0011000; // q

			8'h52 : HexSeg = 7'b0101111; // R 0101111
			8'h72 : HexSeg = 7'b0101111; // r

			8'h53 : HexSeg = 7'b0010010; // S 0010010
			8'h73 : HexSeg = 7'b0010010; // s

			8'h54 : HexSeg = 7'b0000111; // T 0000111
			8'h74 : HexSeg = 7'b0000111; // t


			8'h55 : HexSeg = 7'b1000001; // U
			8'h75 : HexSeg = 7'b1000001; // u

			8'h56 : HexSeg = 7'b1100011; // V
			8'h76 : HexSeg = 7'b1100011; // V

			8'h57 : HexSeg = 7'b1010101; // W
			8'h77 : HexSeg = 7'b1010101; // w

			8'h58 : HexSeg = 7'b0001001; // X
			8'h78 : HexSeg = 7'b0001001; // x

			8'h59 : HexSeg = 7'b0010001; // Y
			8'h79 : HexSeg = 7'b0010001; // y

			8'h5A : HexSeg = 7'b0100100; // Z
			8'h7A : HexSeg = 7'b0100100; // z

			8'h30 : HexSeg = 7'b1000000; // 0
			8'h31 : HexSeg = 7'b1111001; // 1
			8'h32 : HexSeg = 7'b0100100; // 2
			8'h33 : HexSeg = 7'b0110000; // 3
			8'h34 : HexSeg = 7'b0011001; // 4
			8'h35 : HexSeg = 7'b0010010; // 5
			8'h36 : HexSeg = 7'b0000010; // 6
			8'h37 : HexSeg = 7'b1111000; // 7
			8'h38 : HexSeg = 7'b0000000; // 8
			8'h39 : HexSeg = 7'b0010000; // 9

			default : HexSeg = 7'b1111111;
		endcase
	end
endmodule


