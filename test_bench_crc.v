`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:54:35 03/18/2017
// Design Name:   crc_192bits
// Module Name:   C:/Users/ITS_PERSONEL/Xilinx/march18_2017/crc_40bit/text_crc192.v
// Project Name:  crc_40bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: crc_192bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module text_crc192;

	// Inputs
	reg [175:0] data_in;
	reg clk;

	// Outputs
	wire [191:0]data_out;

	// Instantiate the Unit Under Test (UUT)
	crc_192bits uut (
		.data_in(data_in), 
		.clk(clk), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		data_in = 176'hABCDEF0123456789FEDCBA9876543210ABCDEF123456;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
       initial
		#20000 $finish;
		always
		#200 clk=~clk;
endmodule

