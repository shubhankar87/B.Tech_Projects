//crc code _ behavioural
//////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:36:26  
// Design Name: 
// Module Name:    crc 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module crc_192bits(input [175:0]data_in,
input clk,
output reg [191:0]data_out
    );
	 reg [191:0]input_reg;
	 
	 reg [15:0]crc_reg;
	 integer i;
	 integer j=0;
	 //////////////
	
	 
	 /////////////////////////////////
	  
	 always@(posedge clk) 
	 begin
	  if(!j)
	  begin
	  input_reg={data_in,16'b0000000000000000}; 
	  crc_reg=input_reg[175:160];
	  end
	  for(i=175;i>=0;i=i-1)
	  begin 
	   crc_reg[15:0]={input_reg[i],crc_reg[15],crc_reg[14],crc_reg[13],crc_reg[12],crc_reg[11],input_reg[i]^crc_reg[11],crc_reg[9],crc_reg[8],crc_reg[7],crc_reg[6],crc_reg[5],crc_reg[4],input_reg[i]^crc_reg[4],input_reg[3],input_reg[2],input_reg[1]};

	  end
	  data_out={data_in,crc_reg[15:0]};
	 
	 end
	 endmodule
    