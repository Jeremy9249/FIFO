/*******************************************************************************
*** ECE 527L Experiment #4				          Jeremy Perez, Spring, 2019 ***
***										                                     ***
*** Experiment#4 Asynchronous Design 						                 ***
********************************************************************************
*** Filename: WR_PTR.sv	       	     		 Created by Jeremy Perez, 5/2/19 ***
***                    									                     ***
********************************************************************************/

`timescale 1ps/1ps
module WR_PTR(WINC,WCLK,WRST_n,WQ2_RPTR,WPTR,WADDR,WFULL);
	parameter ADDR_SIZE=4;	
	input WINC,WCLK,WRST_n;
	input [ADDR_SIZE:0] WQ2_RPTR;
	output reg [ADDR_SIZE:0]WPTR;
	output [ADDR_SIZE-1:0] WADDR;		
	output reg WFULL;
		
	reg [ADDR_SIZE:0] WR_BIN;
	wire [ADDR_SIZE:0] WR_GRAYNEXT, WR_BINNEXT;
	//Pointer Generation
	always @(posedge WCLK or negedge WRST_n) begin
		if(!WRST_n) begin
			WR_BIN<=0;
			WPTR <=0;
		end
		else begin
			WR_BIN<=WR_BINNEXT;
			WPTR <=WR_GRAYNEXT;
		end
	end	
	assign WADDR=WR_BIN[ADDR_SIZE-1:0];
	assign WR_BINNEXT=WR_BIN+(WINC&~WFULL);
	assign WR_GRAYNEXT=(WR_BINNEXT>>1)^WR_BINNEXT;
	//Full Flag Generation
	assign isWFULL=((WR_GRAYNEXT[ADDR_SIZE]!=WQ2_RPTR[ADDR_SIZE])&&
					  (WR_GRAYNEXT[ADDR_SIZE-1]!=WQ2_RPTR[ADDR_SIZE-1])&&
					  (WR_GRAYNEXT[ADDR_SIZE-2:0]==WQ2_RPTR[ADDR_SIZE-2:0]));
	always @(posedge WCLK or negedge WRST_n)
		if (!WRST_n) WFULL<=1'b0;
		else WFULL<=isWFULL;
endmodule