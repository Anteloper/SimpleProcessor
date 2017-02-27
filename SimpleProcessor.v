/* Verilog for cell 'SimpleProcessor{sch}' from library 'SimpleProcessor' */
/* Created on Mon Jul 18, 2016 16:06:03 */
/* Last revised on Sun Dec 18, 2016 18:13:55 */
/* Written on Sun Feb 26, 2017 23:10:47 by Electric VLSI Design System, version 9.06 */

module SB_parts__SB_DFFE(C, D, E, Q);
  input C;
  input D;
  input E;
  output Q;

  /* user-specified Verilog code */
  //---- SB_DFFE
  /**/    reg Q = 0;
  /**/    always @(posedge C) begin
  /**/        if (E) Q <= D;
  /**/    end

endmodule   /* SB_parts__SB_DFFE */

module SimpleProcessor__DFFE16(D, clk, e, Q);
  input [15:0] D;
  input clk;
  input e;
  output [15:0] Q;

  SB_parts__SB_DFFE SB_DFFE_0(.C(clk), .D(D[0]), .E(e), .Q(Q[0]));
  SB_parts__SB_DFFE SB_DFFE_1(.C(clk), .D(D[1]), .E(e), .Q(Q[1]));
  SB_parts__SB_DFFE SB_DFFE_2(.C(clk), .D(D[2]), .E(e), .Q(Q[2]));
  SB_parts__SB_DFFE SB_DFFE_3(.C(clk), .D(D[3]), .E(e), .Q(Q[3]));
  SB_parts__SB_DFFE SB_DFFE_4(.C(clk), .D(D[4]), .E(e), .Q(Q[4]));
  SB_parts__SB_DFFE SB_DFFE_5(.C(clk), .D(D[5]), .E(e), .Q(Q[5]));
  SB_parts__SB_DFFE SB_DFFE_6(.C(clk), .D(D[6]), .E(e), .Q(Q[6]));
  SB_parts__SB_DFFE SB_DFFE_7(.C(clk), .D(D[7]), .E(e), .Q(Q[7]));
  SB_parts__SB_DFFE SB_DFFE_8(.C(clk), .D(D[8]), .E(e), .Q(Q[8]));
  SB_parts__SB_DFFE SB_DFFE_9(.C(clk), .D(D[9]), .E(e), .Q(Q[9]));
  SB_parts__SB_DFFE SB_DFFE_10(.C(clk), .D(D[10]), .E(e), .Q(Q[10]));
  SB_parts__SB_DFFE SB_DFFE_11(.C(clk), .D(D[11]), .E(e), .Q(Q[11]));
  SB_parts__SB_DFFE SB_DFFE_12(.C(clk), .D(D[12]), .E(e), .Q(Q[12]));
  SB_parts__SB_DFFE SB_DFFE_13(.C(clk), .D(D[13]), .E(e), .Q(Q[13]));
  SB_parts__SB_DFFE SB_DFFE_14(.C(clk), .D(D[14]), .E(e), .Q(Q[14]));
  SB_parts__SB_DFFE SB_DFFE_15(.C(clk), .D(D[15]), .E(e), .Q(Q[15]));
endmodule   /* SimpleProcessor__DFFE16 */

module gateLevelParts__mux1_2x1(s, x0, x1, y);
  input s;
  input x0;
  input x1;
  output y;

  wire and_0_yc, and_0_yt, and_1_yc, and_1_yt, buf_0_c, net_0, net_3, net_8;
  wire or_0_yc, or_0_yt;

  and and_0(net_0, net_8, x0);
  and and_1(net_3, s, x1);
  not buf_0(net_8, s);
  or or_0(y, net_0, net_3);
endmodule   /* gateLevelParts__mux1_2x1 */

module gateLevelParts__add1(A, B, Cin, Cout, Sum);
  input A;
  input B;
  input Cin;
  output Cout;
  output Sum;

  wire and_0_yc, and_0_yt, and_1_yc, and_1_yt, and_2_yc, and_2_yt, buf_0_c;
  wire buf_1_c, buf_2_c, net_14, net_18, net_28, net_31, net_4, net_5, net_55;
  wire net_61, or_0_yc, or_0_yt, or_1_yc, or_1_yt;

  and and_0(net_55, net_4, B);
  and and_1(net_61, net_5, A);
  and and_2(net_28, A, B);
  not buf_0(net_4, A);
  not buf_1(net_5, B);
  not buf_2(net_14, net_18);
  or or_0(net_18, net_61, net_55);
  or or_1(net_31, A, B);
  gateLevelParts__mux1_2x1 mux1_2x1_0(.s(Cin), .x0(net_18), .x1(net_14), 
      .y(Sum));
  gateLevelParts__mux1_2x1 mux1_2x1_1(.s(Cin), .x0(net_28), .x1(net_31), 
      .y(Cout));
endmodule   /* gateLevelParts__add1 */

module gateLevelParts__log_0(out);
  output out;

  /* user-specified Verilog code */
  //------------------
  //--   log_0
  //--  A logic 0 source,
  //--  a GND connection.
  //--------------------
  
  wire out;
  assign out = 0;

endmodule   /* gateLevelParts__log_0 */

module gateLevelParts__add16(A, B, Sum);
  input [15:0] A;
  input [15:0] B;
  output [15:0] Sum;

  wire Cin0, Cin1, Cin10, Cin11, Cin12, Cin13, Cin14, Cin15, Cin2, Cin3, Cin4;
  wire Cin5, Cin6, Cin7, Cin8, Cin9, Cout16;

  gateLevelParts__add1 add1_0(.A(A[0]), .B(B[0]), .Cin(Cin0), .Cout(Cin1), 
      .Sum(Sum[0]));
  gateLevelParts__add1 add1_1(.A(A[1]), .B(B[1]), .Cin(Cin1), .Cout(Cin2), 
      .Sum(Sum[1]));
  gateLevelParts__add1 add1_2(.A(A[2]), .B(B[2]), .Cin(Cin2), .Cout(Cin3), 
      .Sum(Sum[2]));
  gateLevelParts__add1 add1_3(.A(A[3]), .B(B[3]), .Cin(Cin3), .Cout(Cin4), 
      .Sum(Sum[3]));
  gateLevelParts__add1 add1_4(.A(A[4]), .B(B[4]), .Cin(Cin4), .Cout(Cin5), 
      .Sum(Sum[4]));
  gateLevelParts__add1 add1_5(.A(A[5]), .B(B[5]), .Cin(Cin5), .Cout(Cin6), 
      .Sum(Sum[5]));
  gateLevelParts__add1 add1_6(.A(A[6]), .B(B[6]), .Cin(Cin6), .Cout(Cin7), 
      .Sum(Sum[6]));
  gateLevelParts__add1 add1_7(.A(A[7]), .B(B[7]), .Cin(Cin7), .Cout(Cin8), 
      .Sum(Sum[7]));
  gateLevelParts__add1 add1_8(.A(A[8]), .B(B[8]), .Cin(Cin8), .Cout(Cin9), 
      .Sum(Sum[8]));
  gateLevelParts__add1 add1_9(.A(A[9]), .B(B[9]), .Cin(Cin9), .Cout(Cin10), 
      .Sum(Sum[9]));
  gateLevelParts__add1 add1_10(.A(A[10]), .B(B[10]), .Cin(Cin10), .Cout(Cin11), 
      .Sum(Sum[10]));
  gateLevelParts__add1 add1_11(.A(A[11]), .B(B[11]), .Cin(Cin11), .Cout(Cin12), 
      .Sum(Sum[11]));
  gateLevelParts__add1 add1_12(.A(A[12]), .B(B[12]), .Cin(Cin12), .Cout(Cin13), 
      .Sum(Sum[12]));
  gateLevelParts__add1 add1_13(.A(A[13]), .B(B[13]), .Cin(Cin13), .Cout(Cin14), 
      .Sum(Sum[13]));
  gateLevelParts__add1 add1_14(.A(A[14]), .B(B[14]), .Cin(Cin14), .Cout(Cin15), 
      .Sum(Sum[14]));
  gateLevelParts__add1 add1_15(.A(A[15]), .B(B[15]), .Cin(Cin15), 
      .Cout(Cout16), .Sum(Sum[15]));
  gateLevelParts__log_0 log_0_1(.out(Cin0));
endmodule   /* gateLevelParts__add16 */

module gateLevelParts__and16(A, B, y);
  input [15:0] A;
  input [15:0] B;
  output [15:0] y;

  wire and_10_yc, and_10_yt, and_11_yc, and_11_yt, and_12_yc, and_12_yt;
  wire and_13_yc, and_13_yt, and_14_yc, and_14_yt, and_15_yc, and_15_yt;
  wire and_16_yc, and_16_yt, and_1_yc, and_1_yt, and_2_yc, and_2_yt, and_3_yc;
  wire and_3_yt, and_4_yc, and_4_yt, and_5_yc, and_5_yt, and_6_yc, and_6_yt;
  wire and_7_yc, and_7_yt, and_8_yc, and_8_yt, and_9_yc, and_9_yt;

  and and_1(y[0], A[0], B[0]);
  and and_2(y[1], A[1], B[1]);
  and and_3(y[2], A[2], B[2]);
  and and_4(y[3], A[3], B[3]);
  and and_5(y[4], A[4], B[4]);
  and and_6(y[5], A[5], B[5]);
  and and_7(y[6], A[6], B[6]);
  and and_8(y[7], A[7], B[7]);
  and and_9(y[8], A[8], B[8]);
  and and_10(y[9], A[9], B[9]);
  and and_11(y[10], A[10], B[10]);
  and and_12(y[11], A[11], B[11]);
  and and_13(y[12], A[12], B[12]);
  and and_14(y[13], A[13], B[13]);
  and and_15(y[14], A[14], B[14]);
  and and_16(y[15], A[15], B[15]);
endmodule   /* gateLevelParts__and16 */

module gateLevelParts__mux16_2x1(s, x0, x1, y);
  input s;
  input [15:0] x0;
  input [15:0] x1;
  output [15:0] y;

  gateLevelParts__mux1_2x1 mux1_2x1_0(.s(s), .x0(x0[0]), .x1(x1[0]), 
      .y(y[0]));
  gateLevelParts__mux1_2x1 mux1_2x1_1(.s(s), .x0(x0[1]), .x1(x1[1]), 
      .y(y[1]));
  gateLevelParts__mux1_2x1 mux1_2x1_2(.s(s), .x0(x0[2]), .x1(x1[2]), 
      .y(y[2]));
  gateLevelParts__mux1_2x1 mux1_2x1_3(.s(s), .x0(x0[3]), .x1(x1[3]), 
      .y(y[3]));
  gateLevelParts__mux1_2x1 mux1_2x1_4(.s(s), .x0(x0[4]), .x1(x1[4]), 
      .y(y[4]));
  gateLevelParts__mux1_2x1 mux1_2x1_5(.s(s), .x0(x0[5]), .x1(x1[5]), 
      .y(y[5]));
  gateLevelParts__mux1_2x1 mux1_2x1_6(.s(s), .x0(x0[6]), .x1(x1[6]), 
      .y(y[6]));
  gateLevelParts__mux1_2x1 mux1_2x1_7(.s(s), .x0(x0[7]), .x1(x1[7]), 
      .y(y[7]));
  gateLevelParts__mux1_2x1 mux1_2x1_8(.s(s), .x0(x0[8]), .x1(x1[8]), 
      .y(y[8]));
  gateLevelParts__mux1_2x1 mux1_2x1_9(.s(s), .x0(x0[9]), .x1(x1[9]), 
      .y(y[9]));
  gateLevelParts__mux1_2x1 mux1_2x1_10(.s(s), .x0(x0[10]), .x1(x1[10]), 
      .y(y[10]));
  gateLevelParts__mux1_2x1 mux1_2x1_11(.s(s), .x0(x0[11]), .x1(x1[11]), 
      .y(y[11]));
  gateLevelParts__mux1_2x1 mux1_2x1_12(.s(s), .x0(x0[12]), .x1(x1[12]), 
      .y(y[12]));
  gateLevelParts__mux1_2x1 mux1_2x1_13(.s(s), .x0(x0[13]), .x1(x1[13]), 
      .y(y[13]));
  gateLevelParts__mux1_2x1 mux1_2x1_14(.s(s), .x0(x0[14]), .x1(x1[14]), 
      .y(y[14]));
  gateLevelParts__mux1_2x1 mux1_2x1_15(.s(s), .x0(x0[15]), .x1(x1[15]), 
      .y(y[15]));
endmodule   /* gateLevelParts__mux16_2x1 */

module gateLevelParts__mux16_4x1(s, x00, x01, x10, x11, y);
  input [1:0] s;
  input [15:0] x00;
  input [15:0] x01;
  input [15:0] x10;
  input [15:0] x11;
  output [15:0] y;

  wire [15:0] net_2;
  wire [15:0] net_6;

  gateLevelParts__mux16_2x1 mux16_2x_0(.s(s[0]), .x0(x00[15:0]), 
      .x1(x01[15:0]), .y(net_2[15:0]));
  gateLevelParts__mux16_2x1 mux16_2x_1(.s(s[0]), .x0(x10[15:0]), 
      .x1(x11[15:0]), .y(net_6[15:0]));
  gateLevelParts__mux16_2x1 mux16_2x_2(.s(s[1]), .x0(net_2[15:0]), 
      .x1(net_6[15:0]), .y(y[15:0]));
endmodule   /* gateLevelParts__mux16_4x1 */

module gateLevelParts__mux16_8x1(s, x000, x001, x010, x011, x100, x101, x110, 
      x111, y);
  input [2:0] s;
  input [15:0] x000;
  input [15:0] x001;
  input [15:0] x010;
  input [15:0] x011;
  input [15:0] x100;
  input [15:0] x101;
  input [15:0] x110;
  input [15:0] x111;
  output [15:0] y;

  wire [15:0] net_2;
  wire [15:0] net_6;

  gateLevelParts__mux16_2x1 mux16_2x_0(.s(s[2]), .x0(net_2[15:0]), 
      .x1(net_6[15:0]), .y(y[15:0]));
  gateLevelParts__mux16_4x1 mux16_4x_0(.s(s[1:0]), .x00(x000[15:0]), 
      .x01(x001[15:0]), .x10(x010[15:0]), .x11(x011[15:0]), .y(net_2[15:0]));
  gateLevelParts__mux16_4x1 mux16_4x_1(.s(s[1:0]), .x00(x100[15:0]), 
      .x01(x101[15:0]), .x10(x110[15:0]), .x11(x111[15:0]), .y(net_6[15:0]));
endmodule   /* gateLevelParts__mux16_8x1 */

module gateLevelParts__not16(x, y);
  input [15:0] x;
  output [15:0] y;

  wire _0_c, _10_c, _11_c, _12_c, _13_c, _14_c, _15_c, _1_c, _2_c, _3_c, _4_c;
  wire _5_c, _6_c, _7_c, _8_c, _9_c;

  not _0(y[0], x[0]);
  not _1(y[1], x[1]);
  not _2(y[2], x[2]);
  not _3(y[3], x[3]);
  not _4(y[4], x[4]);
  not _5(y[5], x[5]);
  not _6(y[6], x[6]);
  not _7(y[7], x[7]);
  not _8(y[8], x[8]);
  not _9(y[9], x[9]);
  not _10(y[10], x[10]);
  not _11(y[11], x[11]);
  not _12(y[12], x[12]);
  not _13(y[13], x[13]);
  not _14(y[14], x[14]);
  not _15(y[15], x[15]);
endmodule   /* gateLevelParts__not16 */

module SimpleProcessor__ALU(A, B, func, out);
  input [15:0] A;
  input [15:0] B;
  input [2:0] func;
  output [15:0] out;

  wire [15:0] ADD;
  wire [15:0] AND;
  wire [15:0] NOT;
  wire [15:0] neg_1;
  wire [15:0] one;
  wire [15:0] zero;

  /* user-specified Verilog code */
  //------------------
  //-- Legend
  //--   func
  //--
  //--   000   ADD
  //--   001   AND
  //--   010   NOT A
  //--   011   pass A
  //--   100   pass B
  //--   101    0
  //--   110    1
  //--   111   -1
  //------------------
  
  assign zero = 16'h0000;
  assign one = 16'h0001;
  assign neg_1 = 16'hFFFF;

  gateLevelParts__add16 add16_0(.A(A[15:0]), .B(B[15:0]), .Sum(ADD[15:0]));
  gateLevelParts__and16 and16_0(.A(A[15:0]), .B(B[15:0]), .y(AND[15:0]));
  gateLevelParts__mux16_8x1 mux16_8x_0(.s(func[2:0]), .x000(ADD[15:0]), 
      .x001(AND[15:0]), .x010(NOT[15:0]), .x011(A[15:0]), .x100(B[15:0]), 
      .x101(zero[15:0]), .x110(one[15:0]), .x111(neg_1[15:0]), .y(out[15:0]));
  gateLevelParts__not16 not16_0(.x(A[15:0]), .y(NOT[15:0]));
endmodule   /* SimpleProcessor__ALU */

module SB_parts__BRAM_256x16(clk, raddr, re, waddr, wdata, we, rdata);
  input clk;
  input [7:0] raddr;
  input re;
  input [7:0] waddr;
  input [15:0] wdata;
  input we;
  output [15:0] rdata;

  /* user-specified Verilog code */
  parameter file="mem_bits.txt";
  reg [15:0] rdata;
  reg [15:0] mem [0:255];
  
  initial $readmemb(file, mem);
  
  always @(posedge clk) begin
      if (we) mem[waddr] <= wdata;
      if (re) rdata <= mem[raddr];
  end
  //----------------- WARNING ---------
  //---- Synthesis Constraint for Initialization
  //--
  //-- It would be nice to have each instance have its own readmemb().
  //-- Unfortunately, putting a readmemb() in a parent cell and refering
  //-- to an instance name does not synthesize. Therefore, if one wants
  //-- different initializations for different instances, it looks like every instance
  //-- has to have its own module definition with its own embedded readmemb().

endmodule   /* SB_parts__BRAM_256x16 */

module SimpleProcessor__Instr_Decode(clk, opcode, out);
  input clk;
  input [3:0] opcode;
  output [15:0] out;

  wire re, we;
  wire [7:4] addr;
  wire [7:0] waddr;
  wire [15:0] wdata;

  /* user-specified Verilog declarations */
  //-----------------
  //-- ROM
  //-- disable writes
  //-- enable reads
  //-- ignore write address
  //-- ignore write data
  //----------
  assign we = 1'b0;
  assign re = 1'b1;
  assign waddr[7:0] = 8'd0;
  assign wdata = 16'd0;
  //-------------------------
  //-- Instruction Decode ROM (16 16-bit control words)
  //--
  //-- Decode function, with registered output 
  //--
  //-- Holds only control signals, not writable;
  //-- 4-bit address input, 16 control words:
  //-- Requires an initialization file:
  //--     DECODE_bits.txt
  //-- NB--Initialization file fills entire BRAM, but only
  //-- the addresses x00 to x0F contain control signals.
  //-------------------------
  //-- ignore addr's four MSbs
  assign addr[7:4] = 4'h0;

  /* user-specified Verilog code */
  defparam Instr_Decode_ROM.file = "DECODE_bits.txt";

  /* automatically generated Verilog */
  SB_parts__BRAM_256x16 Instr_Decode_ROM(.clk(clk), .raddr({addr[7], addr[6], 
      addr[5], addr[4], opcode[3], opcode[2], opcode[1], opcode[0]}), .re(re), 
      .waddr(waddr[7:0]), .wdata(wdata[15:0]), .we(we), .rdata(out[15:0]));
endmodule   /* SimpleProcessor__Instr_Decode */

module SimpleProcessor__DMEM(RW, addr, clk, in, out);
  input RW;
  input [15:0] addr;
  input clk;
  input [15:0] in;
  output [15:0] out;

  wire buf_0_c, net_15;

  /* user-specified Verilog declarations */
  //-------------------------
  //-- DMEM (256 16-bit data words)
  //--
  //-- Data Memory, RAM, with registered output 
  //-- One read or write per cycle:
  //--     RW == 1 for write; RW == 0 for read.
  //-- (in future, this will be replaced by a data cache)
  //--
  //-- 16-bit word addressable;
  //-- 16-bit address input, 256 physical words:
  //--      Address bits 15:8 are ignored.
  //-- Requires an initialization file:
  //--     DMEM_0_bits.txt
  //-------------------------

  /* user-specified Verilog code */
  defparam DMEM_ram_0.file = "DMEM_0_bits.txt";

  /* automatically generated Verilog */
  not buf_0(net_15, RW);
  SB_parts__BRAM_256x16 DMEM_ram_0(.clk(clk), .raddr(addr[7:0]), .re(net_15), 
      .waddr(addr[7:0]), .wdata(in[15:0]), .we(RW), .rdata(out[15:0]));
endmodule   /* SimpleProcessor__DMEM */

module SimpleProcessor__bus16_splitter(bus, bus0, bus1, bus10, bus11, bus12, 
      bus13, bus14, bus15, bus2, bus3, bus4, bus5, bus6, bus7, bus8, bus9);
  input [15:0] bus;
  output bus0;
  output bus1;
  output bus10;
  output bus11;
  output bus12;
  output bus13;
  output bus14;
  output bus15;
  output bus2;
  output bus3;
  output bus4;
  output bus5;
  output bus6;
  output bus7;
  output bus8;
  output bus9;

  wire buf_0_c, buf_19_c, buf_34_c, buf_35_c, buf_36_c, buf_37_c, buf_38_c;
  wire buf_39_c, buf_40_c, buf_41_c, buf_42_c, buf_43_c, buf_44_c, buf_45_c;
  wire buf_46_c, buf_47_c;

  buf buf_0(bus0, bus[0]);
  buf buf_19(bus1, bus[1]);
  buf buf_34(bus2, bus[2]);
  buf buf_35(bus3, bus[3]);
  buf buf_36(bus4, bus[4]);
  buf buf_37(bus5, bus[5]);
  buf buf_38(bus6, bus[6]);
  buf buf_39(bus7, bus[7]);
  buf buf_40(bus8, bus[8]);
  buf buf_41(bus9, bus[9]);
  buf buf_42(bus10, bus[10]);
  buf buf_43(bus11, bus[11]);
  buf buf_44(bus12, bus[12]);
  buf buf_45(bus13, bus[13]);
  buf buf_46(bus14, bus[14]);
  buf buf_47(bus15, bus[15]);
endmodule   /* SimpleProcessor__bus16_splitter */

module SimpleProcessor__IMEM(addr, clk, out);
  input [15:0] addr;
  input clk;
  output [15:0] out;

  wire re, we;
  wire [7:0] waddr;
  wire [15:0] wdata;

  /* user-specified Verilog declarations */
  //-----------------
  //-- ROM
  //-- disable writes
  //-- enable reads
  //-- ignore write address
  //-- ignore write data
  //----------
  assign we = 1'b0;
  assign re = 1'b1;
  assign waddr = 8'd0;
  assign wdata = 16'd0;
  //-------------------------
  //-- IMEM (256 16-bit instruction words)
  //--
  //-- Instruction Memory, ROM, with registered output 
  //-- (in future, this will be replaced by an instruction cache)
  //--
  //-- 16-bit word addressable;
  //-- Holds only instructions, not writable;
  //-- 16-bit address input, 256 physical words:
  //--      Address bits 15:8 are ignored.
  //-- Requires an initialization file:
  //--     IMEM_0_bits.txt
  //-------------------------

  /* user-specified Verilog code */
  defparam IMEM_ram_0.file = "IMEM_0_bits.txt";

  /* automatically generated Verilog */
  SB_parts__BRAM_256x16 IMEM_ram_0(.clk(clk), .raddr(addr[7:0]), .re(re), 
      .waddr(waddr[7:0]), .wdata(wdata[15:0]), .we(we), .rdata(out[15:0]));
endmodule   /* SimpleProcessor__IMEM */

module gateLevelParts__imm_LSB(in, \out[15] , \out[7] , \out[6] , \out[5] , 
      \out[4] , \out[3] , \out[2] , \out[1] , \out[0] );
  input [7:0] in;
  input \out[15] , \out[7] , \out[6] , \out[5] , \out[4] , \out[3] , \out[2] , 
      \out[1] , \out[0] ;

  wire buf_0_c, buf_1_c, buf_2_c, buf_3_c, buf_4_c, buf_5_c, buf_6_c, buf_7_c;

  buf buf_0( \out[0] , in[0]);
  buf buf_1( \out[1] , in[1]);
  buf buf_2( \out[2] , in[2]);
  buf buf_3( \out[3] , in[3]);
  buf buf_4( \out[4] , in[4]);
  buf buf_5( \out[5] , in[5]);
  buf buf_6( \out[6] , in[6]);
  buf buf_7( \out[7] , in[7]);
endmodule   /* gateLevelParts__imm_LSB */

module gateLevelParts__plus1_1bit(Cin, x, Cout, s);
  input Cin;
  input x;
  output Cout;
  output s;

  wire and_15_yc, and_15_yt, net_572, or_30_yc, or_30_yt, or_31_yc, or_31_yt;

  and and_15(Cout, x, Cin);
  nor or_30(s, Cout, net_572);
  nor or_31(net_572, x, Cin);
endmodule   /* gateLevelParts__plus1_1bit */

module gateLevelParts__incr_16(x, s);
  input [15:0] x;
  output [15:0] s;

  wire buf_0_c, c10, c11, c12, c13, c14, c15, c2, c3, c4, c5, c6, c7, c8, c9;
  wire net_55;

  not buf_0(s[0], x[0]);
  gateLevelParts__plus1_1bit plus1_1b_0(.Cin(x[0]), .x(x[1]), .Cout(c2), 
      .s(s[1]));
  gateLevelParts__plus1_1bit plus1_1b_1(.Cin(c2), .x(x[2]), .Cout(c3), 
      .s(s[2]));
  gateLevelParts__plus1_1bit plus1_1b_2(.Cin(c3), .x(x[3]), .Cout(c4), 
      .s(s[3]));
  gateLevelParts__plus1_1bit plus1_1b_3(.Cin(c4), .x(x[4]), .Cout(c5), 
      .s(s[4]));
  gateLevelParts__plus1_1bit plus1_1b_4(.Cin(c5), .x(x[5]), .Cout(c6), 
      .s(s[5]));
  gateLevelParts__plus1_1bit plus1_1b_5(.Cin(c6), .x(x[6]), .Cout(c7), 
      .s(s[6]));
  gateLevelParts__plus1_1bit plus1_1b_6(.Cin(c7), .x(x[7]), .Cout(c8), 
      .s(s[7]));
  gateLevelParts__plus1_1bit plus1_1b_7(.Cin(c8), .x(x[8]), .Cout(c9), 
      .s(s[8]));
  gateLevelParts__plus1_1bit plus1_1b_8(.Cin(c9), .x(x[9]), .Cout(c10), 
      .s(s[9]));
  gateLevelParts__plus1_1bit plus1_1b_9(.Cin(c10), .x(x[10]), .Cout(c11), 
      .s(s[10]));
  gateLevelParts__plus1_1bit plus1_1b_10(.Cin(c11), .x(x[11]), .Cout(c12), 
      .s(s[11]));
  gateLevelParts__plus1_1bit plus1_1b_11(.Cin(c12), .x(x[12]), .Cout(c13), 
      .s(s[12]));
  gateLevelParts__plus1_1bit plus1_1b_12(.Cin(c13), .x(x[13]), .Cout(c14), 
      .s(s[13]));
  gateLevelParts__plus1_1bit plus1_1b_13(.Cin(c14), .x(x[14]), .Cout(c15), 
      .s(s[14]));
  gateLevelParts__plus1_1bit plus1_1b_14(.Cin(c15), .x(x[15]), .Cout(net_55), 
      .s(s[15]));
endmodule   /* gateLevelParts__incr_16 */

module icoboard__PMOD8LD_2_ico1_0_P1(LED0, LED1, LED2, LED3, LED4, LED5, LED6, 
      LED7, p1, p10, p2, p3, p4, p7, p8, p9);
  input LED0;
  input LED1;
  input LED2;
  input LED3;
  input LED4;
  input LED5;
  input LED6;
  input LED7;
  output p1;
  output p10;
  output p2;
  output p3;
  output p4;
  output p7;
  output p8;
  output p9;

  wire buf_13_c, buf_30_c, buf_31_c, buf_32_c, buf_33_c, buf_35_c, buf_36_c;
  wire buf_37_c;

  buf buf_13(p1, LED0);
  buf buf_30(p10, LED7);
  buf buf_31(p9, LED6);
  buf buf_32(p8, LED5);
  buf buf_33(p7, LED4);
  buf buf_35(p4, LED3);
  buf buf_36(p3, LED2);
  buf buf_37(p2, LED1);
endmodule   /* icoboard__PMOD8LD_2_ico1_0_P1 */

module icoboard__PMODBTN_2_ico1_0_P2B(p1, p2, p3, p4, BTN0, BTN1, BTN2, BTN3);
  input p1;
  input p2;
  input p3;
  input p4;
  output BTN0;
  output BTN1;
  output BTN2;
  output BTN3;

  wire buf_39_c, buf_40_c, buf_41_c, buf_42_c;

  buf buf_39(BTN1, p2);
  buf buf_40(BTN2, p3);
  buf buf_41(BTN0, p1);
  buf buf_42(BTN3, p4);
endmodule   /* icoboard__PMODBTN_2_ico1_0_P2B */

module icoboard__PMODSW_2_ico1_0_P2A(p1, p2, p3, p4, SW_1, SW_2, SW_3, SW_4);
  input p1;
  input p2;
  input p3;
  input p4;
  output SW_1;
  output SW_2;
  output SW_3;
  output SW_4;

  wire buf_39_c, buf_40_c, buf_41_c, buf_42_c;

  buf buf_39(SW_2, p2);
  buf buf_40(SW_3, p3);
  buf buf_41(SW_1, p1);
  buf buf_42(SW_4, p4);
endmodule   /* icoboard__PMODSW_2_ico1_0_P2A */

module gateLevelParts__demux1_3x8(in, sel, y000, y001, y010, y011, y100, y101, 
      y110, y111);
  input in;
  input [2:0] sel;
  output y000;
  output y001;
  output y010;
  output y011;
  output y100;
  output y101;
  output y110;
  output y111;

  wire and_0_yc, and_0_yt, and_1_yc, and_1_yt, and_2_yc, and_2_yt, and_3_yc;
  wire and_3_yt, and_4_yc, and_4_yt, and_5_yc, and_5_yt, and_6_yc, and_6_yt;
  wire and_7_yc, and_7_yt, buf_0_c, buf_1_c, buf_2_c, net_480, nsel0, nsel1;
  wire nsel2;

  and and_0(y000, in, nsel0, nsel1, nsel2);
  and and_1(y001, in, nsel1, nsel2, sel[0]);
  and and_2(y010, in, nsel0, nsel2, sel[1]);
  and and_3(y011, in, nsel2, sel[0], sel[1]);
  and and_4(y100, in, nsel0, nsel1, sel[2]);
  and and_5(y101, in, nsel1, sel[0], sel[2]);
  and and_6(y110, in, nsel0, sel[1], sel[2]);
  and and_7(y111, in, sel[0], sel[1], sel[2]);
  not buf_0(nsel0, sel[0]);
  not buf_1(nsel1, sel[1]);
  not buf_2(nsel2, sel[2]);
endmodule   /* gateLevelParts__demux1_3x8 */

module SimpleProcessor__RegFile(DR, S1, S2, clk, in, we, SR1, SR2);
  input [2:0] DR;
  input [2:0] S1;
  input [2:0] S2;
  input clk;
  input [15:0] in;
  input we;
  output [15:0] SR1;
  output [15:0] SR2;

  wire net_103, net_108, net_204, net_77, net_80, net_86, net_93, net_99;
  wire [15:0] R0;
  wire [15:0] R1;
  wire [15:0] R2;
  wire [15:0] R3;
  wire [15:0] R4;
  wire [15:0] R5;
  wire [15:0] R6;
  wire [15:0] R7;

  SimpleProcessor__DFFE16 DFFE16_0(.D(in[15:0]), .clk(clk), .e(net_77), 
      .Q(R0[15:0]));
  SimpleProcessor__DFFE16 DFFE16_1(.D(in[15:0]), .clk(clk), .e(net_80), 
      .Q(R1[15:0]));
  SimpleProcessor__DFFE16 DFFE16_2(.D(in[15:0]), .clk(clk), .e(net_86), 
      .Q(R2[15:0]));
  SimpleProcessor__DFFE16 DFFE16_3(.D(in[15:0]), .clk(clk), .e(net_204), 
      .Q(R3[15:0]));
  SimpleProcessor__DFFE16 DFFE16_4(.D(in[15:0]), .clk(clk), .e(net_93), 
      .Q(R4[15:0]));
  SimpleProcessor__DFFE16 DFFE16_5(.D(in[15:0]), .clk(clk), .e(net_103), 
      .Q(R5[15:0]));
  SimpleProcessor__DFFE16 DFFE16_6(.D(in[15:0]), .clk(clk), .e(net_99), 
      .Q(R6[15:0]));
  SimpleProcessor__DFFE16 DFFE16_7(.D(in[15:0]), .clk(clk), .e(net_108), 
      .Q(R7[15:0]));
  gateLevelParts__demux1_3x8 demux1_3_0(.in(we), .sel(DR[2:0]), .y000(net_77), 
      .y001(net_80), .y010(net_86), .y011(net_204), .y100(net_93), 
      .y101(net_103), .y110(net_99), .y111(net_108));
  gateLevelParts__mux16_8x1 mux16_8x_0(.s(S1[2:0]), .x000(R0[15:0]), 
      .x001(R1[15:0]), .x010(R2[15:0]), .x011(R3[15:0]), .x100(R4[15:0]), 
      .x101(R5[15:0]), .x110(R6[15:0]), .x111(R7[15:0]), .y(SR1[15:0]));
  gateLevelParts__mux16_8x1 mux16_8x_1(.s(S2[2:0]), .x000(R0[15:0]), 
      .x001(R1[15:0]), .x010(R2[15:0]), .x011(R3[15:0]), .x100(R4[15:0]), 
      .x101(R5[15:0]), .x110(R6[15:0]), .x111(R7[15:0]), .y(SR2[15:0]));
endmodule   /* SimpleProcessor__RegFile */

module gateLevelParts__imm_MSB(in, out);
  input [7:0] in;
  output [15:7] out;

  wire buf_10_c, buf_11_c, buf_12_c, buf_13_c, buf_14_c, buf_15_c, buf_8_c;
  wire buf_9_c;

  buf buf_8(out[8], in[0]);
  buf buf_9(out[9], in[1]);
  buf buf_10(out[10], in[2]);
  buf buf_11(out[11], in[3]);
  buf buf_12(out[12], in[4]);
  buf buf_13(out[13], in[5]);
  buf buf_14(out[14], in[6]);
  buf buf_15(out[15], in[7]);
endmodule   /* gateLevelParts__imm_MSB */

module icoboard__ico1_0_onboard_btn_led(K11, LED1, LED2, LED3, P13, C8, F7, K9, 
      butn1, butn2);
  input K11;
  input LED1;
  input LED2;
  input LED3;
  input P13;
  output C8;
  output F7;
  output K9;
  output butn1;
  output butn2;

  wire buf_0_c, buf_1_c, buf_2_c, buf_3_c, buf_4_c;

  buf buf_0(C8, LED1);
  buf buf_1(F7, LED2);
  buf buf_2(K9, LED3);
  buf buf_3(butn2, P13);
  buf buf_4(butn1, K11);
endmodule   /* icoboard__ico1_0_onboard_btn_led */

module gateLevelParts__sext_9x16(in, \out[15] , \out[7] , \out[6] , \out[5] , 
      \out[4] , \out[3] , \out[2] , \out[1] , \out[0] );
  input [8:0] in;
  output \out[15] , \out[7] , \out[6] , \out[5] , \out[4] , \out[3] , \out[2] , 
      \out[1] , \out[0] ;

  wire buf_0_c, buf_1_c, buf_2_c, buf_3_c, buf_4_c, buf_5_c, buf_6_c, buf_7_c;
  wire buf_8_c;

  buf buf_0( \out[0] , in[0]);
  buf buf_1( \out[1] , in[1]);
  buf buf_2( \out[2] , in[2]);
  buf buf_3( \out[3] , in[3]);
  buf buf_4( \out[4] , in[4]);
  buf buf_5( \out[5] , in[5]);
  buf buf_6( \out[6] , in[6]);
  buf buf_7( \out[7] , in[7]);
  buf buf_8( \out[15] , in[8]);
endmodule   /* gateLevelParts__sext_9x16 */

module SimpleProcessor__swap_bytes_16(in, out);
  input [15:0] in;
  output [15:0] out;

  wire buf_0_c, buf_10_c, buf_11_c, buf_12_c, buf_13_c, buf_14_c, buf_15_c;
  wire buf_1_c, buf_2_c, buf_3_c, buf_4_c, buf_5_c, buf_6_c, buf_7_c, buf_8_c;
  wire buf_9_c;

  buf buf_0(out[8], in[0]);
  buf buf_1(out[9], in[1]);
  buf buf_2(out[10], in[2]);
  buf buf_3(out[11], in[3]);
  buf buf_4(out[12], in[4]);
  buf buf_5(out[13], in[5]);
  buf buf_6(out[14], in[6]);
  buf buf_7(out[15], in[7]);
  buf buf_8(out[0], in[8]);
  buf buf_9(out[1], in[9]);
  buf buf_10(out[2], in[10]);
  buf buf_11(out[3], in[11]);
  buf buf_12(out[4], in[12]);
  buf buf_13(out[5], in[13]);
  buf buf_14(out[6], in[14]);
  buf buf_15(out[7], in[15]);
endmodule   /* SimpleProcessor__swap_bytes_16 */

module SimpleProcessor(B10, B11, A10, A11, A9, B8, B9, D8, K11, P13, A2, A5, 
      B3, B4, B5, B6, B7, C3, C8, F7, K9);
  input B10;
  input B11;
  input A10;
  input A11;
  input A9;
  input B8;
  input B9;
  input D8;
  input K11;
  input P13;
  output A2;
  output A5;
  output B3;
  output B4;
  output B5;
  output B6;
  output B7;
  output C3;
  output C8;
  output F7;
  output K9;

  wire DMEM_we, Imm_LSB_0_ground, Reg_we, clk, clk1, clk2, clock;
  wire imm_MSB_0_ground, in, net_321, net_416, net_510, net_511, net_512;
  wire net_513, net_514, net_515, net_516, net_517, net_518, net_519, net_520;
  wire net_521, net_522, net_523, net_524, net_525, net_529, net_530, net_531;
  wire net_532, net_533, net_534, net_535, net_594, or_2_yc, or_2_yt, or_5_yc;
  wire or_5_yt, pipe_we, swap;
  wire [15:0] ACC_out;
  wire [2:0] ALU_ctl;
  wire [15:0] CTL;
  wire [15:0] DMEM_out;
  wire [15:0] IR;
  wire [15:0] IR_1;
  wire [15:0] IR_2;
  wire [15:0] PC;
  wire [15:0] SR1;
  wire [15:0] SR2;
  wire [15:0] WB_out;
  wire [1:0] WB_sel;
  wire [15:0] disp;
  wire [15:0] imm_16bit;
  wire [1:0] imm_sel;
  wire [15:0] mux16_4x_2_x11;
  wire [15:0] net_434;
  wire [15:0] net_454;
  wire [15:0] net_460;
  wire [15:0] net_544;
  wire [15:0] net_653;
  wire [15:0] net_654;
  wire [15:0] net_656;
  wire [15:0] net_698;
  wire [15:0] net_700;
  wire \net_715[15] ;
  wire \net_715[7] ;
  wire \net_715[6] ;
  wire \net_715[5] ;
  wire \net_715[4] ;
  wire \net_715[3] ;
  wire \net_715[2] ;
  wire \net_715[1] ;
  wire \net_715[0] ;
  wire [15:0] net_716;
  wire [15:0] net_717;
  wire \net_718[15] ;
  wire \net_718[7] ;
  wire \net_718[6] ;
  wire \net_718[5] ;
  wire \net_718[4] ;
  wire \net_718[3] ;
  wire \net_718[2] ;
  wire \net_718[1] ;
  wire \net_718[0] ;
  wire [15:7] net_719;
  wire [15:0] next_PC;
  wire [2:0] sel;
  wire [15:0] test_wire;
  wire [15:0] test_wire_2;

  /* user-specified Verilog code */
  //-------- Debug Controls ----
  //--
  //-- Display control
  //--
  //-- Select one of 8 busses to display
  //--     sel[2:0] 
  //--     (SW3, SW2, SW1):
  //--
  //-- Select LSB or MSB of bus
  //--     swap
  //--    (SW3):
  //--         0:  display LSB
  //--         1:  display MSB
  //-- 
  //-----------------------------
  //--------------------------
  //-- ADD
  //--    op  DR   S1 ...  S2  
  //--   0001 xxx xxx xxx xxx
  //-- AND
  //--    op  DR   S1 ...  S2  
  //--   0101 xxx xxx xxx xxx
  //-- NOT
  //--    op  DR   S1 ... ...  
  //--   1001 xxx xxx xxx xxx
  //-- LDR
  //--    op  DR  ... ... BaseR  
  //--   0110 xxx xxx xxx xxx
  //-- STR
  //--    op  ...  S1 ... BaseR  
  //--   0111 xxx xxx xxx xxx
  //-- LIM
  //--    op  DR  ___imm9____  
  //--   1101 xxx xxx xxx xxx
  //-- LEA
  //--    op  DR  ___????____  
  //--   1110 xxx xxx xxx xxx
  //-- LSB
  //--   	op  DR	. __imm8___
  //--   0010 xxx x xxxx xxxx
  //-- MSB
  //--    op  DR  . __imm8___
  //--   0011 xxx x xxxx xxxx
  //--------------------------
  //------------------------
  //-- Global Control Signals
  //------------------------
  /**/
  /**/ assign pipe_we = 1;

  or or_2(net_321, sel[1], net_594, net_416);
  or or_5(clock, clk, clk1, clk2, in);
  SimpleProcessor__DFFE16 ACC(.D(net_454[15:0]), .clk(clk), .e(pipe_we), 
      .Q(ACC_out[15:0]));
  SimpleProcessor__ALU ALU(.A(test_wire_2[15:0]), .B(test_wire[15:0]), 
      .func(ALU_ctl[2:0]), .out(net_454[15:0]));
  SimpleProcessor__DFFE16 CTL_Reg(.D(CTL[15:0]), .clk(clk), .e(pipe_we), 
      .Q(net_544[15:0]));
  SimpleProcessor__Instr_Decode DECODE(.clk(clk), .opcode(IR[15:12]), 
      .out(CTL[15:0]));
  SimpleProcessor__DFFE16 DFFE16_1(.D(IR[15:0]), .clk(clk), .e(pipe_we), 
      .Q(IR_1[15:0]));
  SimpleProcessor__DFFE16 DFFE16_2(.D(IR_1[15:0]), .clk(clk), .e(pipe_we), 
      .Q(IR_2[15:0]));
  SimpleProcessor__DFFE16 DFFE16_3(.D(SR1[15:0]), .clk(clk), .e(pipe_we), 
      .Q(test_wire_2[15:0]));
  SimpleProcessor__DFFE16 DFFE16_4(.D(SR2[15:0]), .clk(clk), .e(pipe_we), 
      .Q(test_wire[15:0]));
  SimpleProcessor__DFFE16 DFFE16_6(.D(imm_16bit[15:0]), .clk(clk), .e(pipe_we), 
      .Q(net_717[15:0]));
  SimpleProcessor__DFFE16 DFFE16_7(.D(next_PC[15:0]), .clk(clk), .e(pipe_we), 
      .Q(net_653[15:0]));
  SimpleProcessor__DFFE16 DFFE16_8(.D(net_653[15:0]), .clk(clk), .e(pipe_we), 
      .Q(net_654[15:0]));
  SimpleProcessor__DFFE16 DFFE16_9(.D(net_654[15:0]), .clk(clk), .e(pipe_we), 
      .Q(net_656[15:0]));
  SimpleProcessor__DFFE16 DFFE16_10(.D({ \net_715[15] ,  \net_715[15] ,  
      \net_715[15] ,  \net_715[15] ,  \net_715[15] ,  \net_715[15] ,  
      \net_715[15] ,  \net_715[15] ,  \net_715[7] ,  \net_715[6] ,  \net_715[5] 
      ,  \net_715[4] ,  \net_715[3] ,  \net_715[2] ,  \net_715[1] ,  
      \net_715[0] }), .clk(clk), .e(pipe_we), .Q(net_716[15:0]));
  SimpleProcessor__DFFE16 DFFE16_11(.D({ \net_718[15] ,  \net_718[15] ,  
      \net_718[15] ,  \net_718[15] ,  \net_718[15] ,  \net_718[15] ,  
      \net_718[15] ,  \net_718[15] ,  \net_718[7] ,  \net_718[6] ,  \net_718[5] 
      ,  \net_718[4] ,  \net_718[3] ,  \net_718[2] ,  \net_718[1] ,  
      \net_718[0] }), .clk(clk), .e(pipe_we), .Q(net_700[15:0]));
  SimpleProcessor__DFFE16 DFFE16_12(.D({net_719[15], net_719[14], net_719[13], 
      net_719[12], net_719[11], net_719[10], net_719[9], net_719[8], 
      net_719[7], net_719[7], net_719[7], net_719[7], net_719[7], net_719[7], 
      net_719[7], net_719[7]}), .clk(clk), .e(pipe_we), .Q(net_698[15:0]));
  SimpleProcessor__DMEM DMEM(.RW(DMEM_we), .addr(test_wire[15:0]), .clk(clk), 
      .in(test_wire_2[15:0]), .out(DMEM_out[15:0]));
  SimpleProcessor__bus16_splitter Execute_Stage_Controls(.bus(CTL[15:0]), 
      .bus0(ALU_ctl[0]), .bus1(ALU_ctl[1]), .bus10(net_530), .bus11(net_531), 
      .bus12(net_532), .bus13(net_533), .bus14(net_534), .bus15(net_535), 
      .bus2(ALU_ctl[2]), .bus3(net_523), .bus4(net_524), .bus5(net_525), 
      .bus6(DMEM_we), .bus7(imm_sel[0]), .bus8(imm_sel[1]), .bus9(net_529));
  SimpleProcessor__IMEM IMEM(.addr(PC[15:0]), .clk(clk), .out(IR[15:0]));
  gateLevelParts__imm_LSB Imm_LSB_0(.in(IR[7:0]), .\out[15] ( \net_718[15] ), 
      .\out[7] ( \net_718[7] ), .\out[6] ( \net_718[6] ), .\out[5] ( 
      \net_718[5] ), .\out[4] ( \net_718[4] ), .\out[3] ( \net_718[3] ), 
      .\out[2] ( \net_718[2] ), .\out[1] ( \net_718[1] ), .\out[0] ( 
      \net_718[0] ));
  SimpleProcessor__DFFE16 PC_(.D(next_PC[15:0]), .clk(clk), .e(pipe_we), 
      .Q(PC[15:0]));
  gateLevelParts__incr_16 PC_incr(.x(PC[15:0]), .s(next_PC[15:0]));
  icoboard__PMOD8LD_2_ico1_0_P1 PMOD8LD__0(.LED0(disp[0]), .LED1(disp[1]), 
      .LED2(disp[2]), .LED3(disp[3]), .LED4(disp[4]), .LED5(disp[5]), 
      .LED6(disp[6]), .LED7(disp[7]), .p1(A5), .p10(B5), .p2(A2), .p3(C3), 
      .p4(B4), .p7(B7), .p8(B6), .p9(B3));
  icoboard__PMODBTN_2_ico1_0_P2B PMODBTN__0(.p1(B8), .p2(A9), .p3(A10), 
      .p4(A11), .BTN0(clk), .BTN1(clk1), .BTN2(in), .BTN3(clk2));
  icoboard__PMODSW_2_ico1_0_P2A PMODSW_2_0(.p1(D8), .p2(B9), .p3(B10), 
      .p4(B11), .SW_1(sel[0]), .SW_2(sel[1]), .SW_3(sel[2]), .SW_4(swap));
  SimpleProcessor__RegFile REGFILE(.DR(IR_2[11:9]), .S1(IR[8:6]), .S2(IR[2:0]), 
      .clk(clk), .in(WB_out[15:0]), .we(Reg_we), .SR1(SR1[15:0]), 
      .SR2(SR2[15:0]));
  SimpleProcessor__bus16_splitter WB_stage_Controls(.bus(net_544[15:0]), 
      .bus0(net_510), .bus1(net_511), .bus10(net_517), .bus11(net_518), 
      .bus12(net_519), .bus13(net_520), .bus14(net_521), .bus15(net_522), 
      .bus2(net_512), .bus3(WB_sel[0]), .bus4(WB_sel[1]), .bus5(Reg_we), 
      .bus6(net_513), .bus7(net_514), .bus8(net_515), .bus9(net_516));
  gateLevelParts__imm_MSB imm_MSB_0(.in(IR[7:0]), .out(net_719[15:7]));
  gateLevelParts__mux16_2x1 mux16_2x_0(.s(swap), .x0(net_460[15:0]), 
      .x1(net_434[15:0]), .y(disp[15:0]));
  gateLevelParts__mux16_4x1 mux16_4x_0(.s(WB_sel[1:0]), .x00(net_656[15:0]), 
      .x01(DMEM_out[15:0]), .x10(ACC_out[15:0]), .x11(net_717[15:0]), 
      .y(WB_out[15:0]));
  gateLevelParts__mux16_4x1 mux16_4x_2(.s(imm_sel[1:0]), .x00(net_716[15:0]), 
      .x01(net_700[15:0]), .x10(net_698[15:0]), .x11(mux16_4x_2_x11[15:0]), 
      .y(imm_16bit[15:0]));
  gateLevelParts__mux16_8x1 mux16_8x_0(.s(sel[2:0]), .x000(test_wire_2[15:0]), 
      .x001(IR[15:0]), .x010(CTL[15:0]), .x011(test_wire[15:0]), 
      .x100(DMEM_out[15:0]), .x101(SR1[15:0]), .x110(SR2[15:0]), 
      .x111(WB_out[15:0]), .y(net_460[15:0]));
  icoboard__ico1_0_onboard_btn_led onboard__0(.K11(K11), .LED1(sel[0]), 
      .LED2(net_321), .LED3(clock), .P13(P13), .C8(C8), .F7(F7), .K9(K9), 
      .butn1(net_594), .butn2(net_416));
  gateLevelParts__sext_9x16 sext_9x1_0(.in(IR[8:0]), .\out[15] ( \net_715[15] 
      ), .\out[7] ( \net_715[7] ), .\out[6] ( \net_715[6] ), .\out[5] ( 
      \net_715[5] ), .\out[4] ( \net_715[4] ), .\out[3] ( \net_715[3] ), 
      .\out[2] ( \net_715[2] ), .\out[1] ( \net_715[1] ), .\out[0] ( 
      \net_715[0] ));
  SimpleProcessor__swap_bytes_16 swap_byt_2(.in(net_460[15:0]), 
      .out(net_434[15:0]));
endmodule   /* SimpleProcessor */
