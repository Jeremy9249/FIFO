/*******************************************************************************
*** ECE 527L Experiment #4				          Jeremy Perez, Spring, 2019 ***
***										                                     ***
*** Experiment#4 Asynchronous Design 						                 ***
********************************************************************************
*** Filename: SYNC_W2R.sv	       	     	 Created by Jeremy Perez, 5/2/19 ***
***                    									                     ***
********************************************************************************/
`timescale 1ps/1ps
module SYNC_W2R(WPTR,RCLK,RRST_n,RQ2_WPTR);
	parameter ADDR_SIZE=4;
	input [ADDR_SIZE:0] WPTR;
	input RCLK,RRST_n;
	output reg [ADDR_SIZE:0] RQ2_WPTR;
	
	reg [ADDR_SIZE:0] RQ1_WPTR;
 
	always @(posedge RCLK or negedge RRST_n)
		if (!RRST_n)
			{RQ2_WPTR,RQ1_WPTR} <= 0;
		else
			{RQ2_WPTR,RQ1_WPTR} <= {RQ1_WPTR,WPTR};
endmodule