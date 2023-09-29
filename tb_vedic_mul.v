timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2023 09:38:15 AM
// Design Name: 
// Module Name: vedic_mul_2_bit_tb
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


module vedic_mul_2_bit_tb();
reg [1:0] a,b;
wire  [3:0]p;
reg clk;
vedic_mul_2_bit dut(a,b,p);


initial begin
clk=1'b0;
a =0;
b=0;
end

always #5 clk = ~clk;

initial begin
#10
a=2'b01; b=2'b10;

#10
a=2'b10; b=2'b11;

#10
a=2'b10; b=2'b10;

#10
a=2'b00; b=2'b10;

#100
$finish;
end

endmodule
