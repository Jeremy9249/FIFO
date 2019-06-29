/*******************************************************************************
*** ECE 527L Experiment #4				          Jeremy Perez, Spring, 2019 ***
***										                                     ***
*** Experiment#4 Asynchronous Design 						                 ***
********************************************************************************
*** Filename: RD_PTR.sv	       	     		 Created by Jeremy Perez, 5/2/19 ***
***                    									                     ***
********************************************************************************/
`timescale 1ps/1ps
module RD_PTR(RINC,RCLK,RRST_n,RQ2_WPTR,RPTR,RADDR,REMPTY);
	parameter ADDR_SIZE=4;	
	input RINC,RCLK,RRST_n;
	input [ADDR_SIZE:0] RQ2_WPTR;
	output reg [ADDR_SIZE:0] RPTR;
	output [ADDR_SIZE-1:0] RADDR;
	output reg REMPTY;
		
	reg [ADDR_SIZE:0] RD_BIN;
	wire [ADDR_SIZE:0] RD_GRAYNEXT, RD_BINNEXT;
	//Pointer Generation
	always@ (posedge RCLK or negedge RRST_n) begin
		if(!RRST_n) begin
			RD_BIN <=0;
			RPTR <=0;
		end
		else begin
			RD_BIN <=RD_BINNEXT;
			RPTR <=RD_GRAYNEXT;
		end
	end
	assign RADDR=RD_BIN [ADDR_SIZE-1:0];
	assign RD_BINNEXT= RD_BIN+(RINC & ~REMPTY);
	assign RD_GRAYNEXT= (RD_BINNEXT>>1)^RD_BINNEXT;
	// Empty Flag Generation
	assign isREMPTY= (RD_GRAYNEXT==RQ2_WPTR );	
	always @(posedge RCLK or negedge RRST_n)
		if (!RRST_n) REMPTY<=1'b1;
		else REMPTY<=isREMPTY;
endmodule