`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2026 02:16:29 PM
// Design Name: 
// Module Name: peri_mux_io
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


module peri_mux_io(
    input wire [1:0] sel,
    input wire tx0,
    input wire rx0,
    input wire pwm1,
    input wire other_signal,
    output reg gpio_pin    

);
    
    always @(*) begin
        case (sel)
            2'b00: gpio_pin = tx0;
            2'b01: gpio_pin = rx0;
            2'b10: gpio_pin = pwm1;
            2'b11: gpio_pin = other_signal;
            default: gpio_pin = 1'bz;
        endcase
    end
    
endmodule
