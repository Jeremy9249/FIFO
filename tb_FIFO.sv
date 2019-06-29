/*******************************************************************************
*** ECE 527L Experiment #4				          Jeremy Perez, Spring, 2019 ***
***										                                     ***
*** Experiment#4 Asynchronous Design 						                 ***
********************************************************************************
*** Filename: tb_FIFO.sv	       	     	 Created by Jeremy Perez, 5/2/19 ***
***                    									                     ***
********************************************************************************/

`timescale 1ps/1ps
module tb_FIFO();
	wire [160-1:0] RDATA;
	wire REMPTY, WFULL;
	reg [160-1:0] WDATA;
	reg WINC, RINC, WCLK, RCLK, WRST_n, RRST_n;		 
	
FIFO #(160,4)U1(RDATA,REMPTY,WFULL,WDATA,WINC,RINC,WCLK,RCLK,WRST_n,RRST_n);
 
 initial begin
	WCLK=1'b0;
	forever #2000 WCLK=~WCLK;
end
initial begin
	RCLK=1'b0;
	forever #10000 RCLK=~RCLK;
end
 
initial begin
	$monitor("%d WDATA=%h RDATA = %h REMPTY= %b WFULL= %b",$time,WDATA,RDATA,REMPTY,WFULL);
end	

initial begin
	$vcdpluson;
	$display("Begining Test \n");
	#50000  WCLK=1'b0; RCLK=1'b0; WINC=1'b0; RINC=1'b0; RRST_n=1'b0; WDATA=8'h0; WRST_n=1'b0;
	#50000  WINC=1'b1; RINC=1'b1;
	#20000 WDATA=16'h1; //WINC=1'b1; RINC=1'b1;
	#20000 WDATA=16'h2;
	#20000 WDATA=16'h4;
	#20000 WDATA=16'h8;
	#20000 WDATA=16'h10;
	#20000 WDATA=16'h20;
	#20000 WDATA=16'h40;
	#20000 WDATA=16'h80;
	#20000 WDATA=16'h100;
	#20000 WDATA=16'h200;
	#20000 WDATA=16'h400;
	#20000 WDATA=16'h800;
	#20000 WDATA=16'h1000;
	#20000 WDATA=16'h2000;
	#20000 WDATA=16'h4000;
	#20000 WDATA=16'h8000;
	#20000 RRST_n=1'b1; // Test R Reset
	#20000 RRST_n =1'b0; 
	#20000 WRST_n=1'b1; //Test W Rst
	#40000 $finish;
 end
endmodule