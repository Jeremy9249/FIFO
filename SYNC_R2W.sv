/*******************************************************************************
*** ECE 527L Experiment #4				          Jeremy Perez, Spring, 2019 ***
***										                                     ***
*** Experiment#4 Asynchronous Design 						                 ***
********************************************************************************
*** Filename: SYNC_W2R.sv	       	     	 Created by Jeremy Perez, 5/2/19 ***
***                    									                     ***
********************************************************************************/
`timescale 1ps/1ps
module SYNC_R2W(RPTR, WCLK, WRST_n,WQ2_RPTR);
	parameter ADDR_SIZE=4;
	input [ADDR_SIZE:0] RPTR;
	input WCLK,WRST_n;
	output reg [ADDR_SIZE:0] WQ2_RPTR;
	
	reg [ADDR_SIZE:0] WQ1_RPTR;
 
	always @(posedge WCLK or negedge WRST_n)
		if (!WRST_n) 
			{WQ2_RPTR,WQ1_RPTR} <= 0;
		else 
			{WQ2_RPTR,WQ1_RPTR} <= {WQ1_RPTR,RPTR};
endmodule