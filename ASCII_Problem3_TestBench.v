//This testbench instantiates ASCII27Seg or Lab.v to display numbers 0-9 converted from HexSeg
module ASCII_Problem3_Testbench();
reg [7:0] AsciiCode;
wire [6:0] HexSeg;
ASCII27Seg A1(AsciiCode, HexSeg);

initial begin
	AsciiCode = 8'h30; #10; // 0
	AsciiCode = 8'h31; #10; // 1
	AsciiCode = 8'h32; #10; // 2
	AsciiCode = 8'h33; #10; // 3
	AsciiCode = 8'h34; #10; // 4
	AsciiCode = 8'h35; #10; // 5
	AsciiCode = 8'h36; #10; // 6
	AsciiCode = 8'h37; #10; // 7
	AsciiCode = 8'h38; #10; // 8
	AsciiCode = 8'h39; #10; // 9
	end
endmodule
