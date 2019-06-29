/*******************************************************************************
*** ECE 527L Experiment #4				          Jeremy Perez, Spring, 2019 ***
***										                                     ***
*** Experiment#4 Asynchronous Design 						                 ***
********************************************************************************
*** Filename: DUAL_RAM.sv	       	         Created by Jeremy Perez, 5/2/19 ***
***                    									                     ***
********************************************************************************/

`timescale 1ps/1ps
module DUAL_RAM(WADDR,RADDR,WCLKEN,WCLK,WFULL,WDATA,RDATA);
	parameter DATA_SIZE=16, ADDR_SIZE=4;
	input [DATA_SIZE-1:0] WDATA;
	input [ADDR_SIZE-1:0] WADDR,RADDR;
	input WCLKEN,WCLK,WFULL; 
	output [DATA_SIZE-1:0] RDATA;
  
	reg [DATA_SIZE-1:0] RAM[0:2**ADDR_SIZE-1];
   
    assign RDATA=RAM[RADDR];
	always @(posedge WCLK)
		if(WCLKEN&!WFULL)
			RAM[WADDR]<=WDATA; //Write
endmodule
