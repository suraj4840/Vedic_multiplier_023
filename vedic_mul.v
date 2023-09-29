`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2023 05:01:04 PM
// Design Name: 
// Module Name: clk_buff_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clk_buff_tb();
reg clk_in;
wire  clk_out;
clk_buffer dut(clk_in , clk_out);

initial begin
clk_in=1'b0;
forever #5 clk_in = ~clk_in;
#200
$finish;
end

endmodule
