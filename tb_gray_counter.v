`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 08.08.2023 07:28:20
// Design Name: 
// Module Name: tb_gray_counter
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


module tb_gray_counter;
    reg clk;
    reg reset;
    reg enable;
    wire [3:0] cnt;
    
    gray_counter DUT(.clk(clk),
                     .reset(reset),
                     .enable(enable),
                     .cnt(cnt)
                     );
                     
    initial begin
        clk = 0;
        reset = 1;
        enable = 0;
        #10 reset = 0;
        enable = 1;
    end
    
    always #5 clk = ~clk; 
     
endmodule
