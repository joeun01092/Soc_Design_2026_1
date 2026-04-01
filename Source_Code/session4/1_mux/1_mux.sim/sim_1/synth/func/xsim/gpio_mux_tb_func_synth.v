// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Wed Apr  1 15:25:34 2026
// Host        : ky-cds-semi running 64-bit Red Hat Enterprise Linux release 8.1 (Ootpa)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home_cds/std010/SoC_Design_2026_1/Soc_Design_2026_1/Source_Code/session4/1_mux/1_mux.sim/sim_1/synth/func/xsim/gpio_mux_tb_func_synth.v
// Design      : peri_mux_io
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module peri_mux_io
   (sel,
    tx0,
    rx0,
    pwm1,
    other_signal,
    gpio_pin);
  input [1:0]sel;
  input tx0;
  input rx0;
  input pwm1;
  input other_signal;
  output gpio_pin;

  wire gpio_pin;
  wire gpio_pin_OBUF;
  wire other_signal;
  wire other_signal_IBUF;
  wire pwm1;
  wire pwm1_IBUF;
  wire rx0;
  wire rx0_IBUF;
  wire [1:0]sel;
  wire [1:0]sel_IBUF;
  wire tx0;
  wire tx0_IBUF;

  OBUF gpio_pin_OBUF_inst
       (.I(gpio_pin_OBUF),
        .O(gpio_pin));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    gpio_pin_OBUF_inst_i_1
       (.I0(rx0_IBUF),
        .I1(tx0_IBUF),
        .I2(other_signal_IBUF),
        .I3(sel_IBUF[1]),
        .I4(sel_IBUF[0]),
        .I5(pwm1_IBUF),
        .O(gpio_pin_OBUF));
  IBUF other_signal_IBUF_inst
       (.I(other_signal),
        .O(other_signal_IBUF));
  IBUF pwm1_IBUF_inst
       (.I(pwm1),
        .O(pwm1_IBUF));
  IBUF rx0_IBUF_inst
       (.I(rx0),
        .O(rx0_IBUF));
  IBUF \sel_IBUF[0]_inst 
       (.I(sel[0]),
        .O(sel_IBUF[0]));
  IBUF \sel_IBUF[1]_inst 
       (.I(sel[1]),
        .O(sel_IBUF[1]));
  IBUF tx0_IBUF_inst
       (.I(tx0),
        .O(tx0_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
