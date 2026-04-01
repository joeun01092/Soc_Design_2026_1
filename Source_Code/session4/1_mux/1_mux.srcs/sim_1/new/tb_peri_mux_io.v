`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2026 02:20:31 PM
// Design Name: 
// Module Name: tb_peri_mux_io
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

module gpio_mux_tb;

    reg [1:0] sel;
    reg tx0;
    reg rx0;
    reg pwm1;
    reg other_signal;
    wire gpio_pin;

gpio_mux_dut (
        .sel(sel),
        .tx0(tx0),
        .rx0(rx0),
        .pwm1(pwm1),
        .other_signal(other_signal),
        .gpio_pin(gpio_pin)
    );
    
    initial begin
     
        tx0 = 1'b0; rx0 = 1'b1; pwm1 = 1'b0; other_signal = 1'b1;
        
        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;
        
        $finish;
     end
     
endmodule
