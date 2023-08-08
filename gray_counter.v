`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 08.08.2023 07:16:20
// Design Name: 
// Module Name: gray_counter
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


module gray_counter(input clk,
                    input reset,
                    input enable,
                    output reg [4:0] cnt
                    );
     
     reg [4:0] temp = 0;
     
     always @(posedge clk or posedge reset) begin
        if(reset) begin
            temp <= 0;
            cnt <= 0;
        end
        else if(enable) begin
            temp <= temp + 1;
            cnt[4] <= temp[4];
            cnt[3] <= temp[4]^temp[3];
            cnt[2] <= temp[3]^temp[2];
            cnt[1] <= temp[1]^temp[2];
            cnt[0] <= temp[0]^temp[1];
        end
     end
     
endmodule
