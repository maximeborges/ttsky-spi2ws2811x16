module ws2811_8
  (input  i_clock,
   input  i_reset,
   input  i_trigger,
   input  [7:0] i_pixel_data,
   output o_data);
  wire [4:0] cyc_count;
  wire [3:0] bit_count;
  reg bit_data_in;
  reg [7:0] rgb;
  reg running;
  wire n218;
  wire n219;
  wire n220;
  wire n222;
  wire [4:0] n224;
  wire n225;
  wire [7:0] n226;
  wire n228;
  wire [31:0] n229;
  wire n231;
  wire [31:0] n232;
  wire [31:0] n234;
  wire [4:0] n235;
  wire [31:0] n236;
  wire n238;
  wire n239;
  wire n240;
  wire [31:0] n241;
  wire n243;
  wire n244;
  wire n245;
  wire n247;
  wire [31:0] n248;
  wire n250;
  wire [31:0] n251;
  wire [31:0] n253;
  wire [3:0] n254;
  wire [31:0] n255;
  wire [31:0] n257;
  wire [31:0] n259;
  wire [2:0] n260;
  wire n265;
  wire [3:0] n267;
  wire n268;
  wire n270;
  wire n271;
  wire [4:0] n273;
  wire [3:0] n274;
  wire n275;
  wire n276;
  wire n277;
  wire [4:0] n278;
  wire [3:0] n279;
  wire n280;
  wire n281;
  wire n283;
  wire [4:0] n285;
  wire [3:0] n287;
  wire n289;
  wire [7:0] n291;
  wire n293;
  wire n308;
  wire [4:0] n309;
  reg [4:0] n310;
  wire n311;
  wire [3:0] n312;
  reg [3:0] n313;
  wire n314;
  wire n315;
  reg n316;
  wire n317;
  wire [7:0] n318;
  reg [7:0] n319;
  wire n320;
  wire n321;
  reg n322;
  reg n323;
  wire n324;
  assign o_data = n323; //(module output)
  /* src/ws2811.vhdl:26:16  */
  assign cyc_count = n310; // (signal)
  /* src/ws2811.vhdl:27:16  */
  assign bit_count = n313; // (signal)
  /* src/ws2811.vhdl:28:16  */
  always @*
    bit_data_in = n316; // (isignal)
  initial
    bit_data_in = 1'b0;
  /* src/ws2811.vhdl:30:16  */
  always @*
    rgb = n319; // (isignal)
  initial
    rgb = 8'b00000000;
  /* src/ws2811.vhdl:32:16  */
  always @*
    running = n322; // (isignal)
  initial
    running = 1'b0;
  /* src/ws2811.vhdl:61:44  */
  assign n218 = ~running;
  /* src/ws2811.vhdl:61:50  */
  assign n219 = i_trigger & n218;
  /* src/ws2811.vhdl:64:68  */
  assign n220 = i_pixel_data[7]; // extract
  /* src/ws2811.vhdl:61:33  */
  assign n222 = n219 ? 1'b1 : n323;
  /* src/ws2811.vhdl:61:33  */
  assign n224 = n219 ? 5'b00001 : cyc_count;
  /* src/ws2811.vhdl:61:33  */
  assign n225 = n219 ? n220 : bit_data_in;
  /* src/ws2811.vhdl:61:33  */
  assign n226 = n219 ? i_pixel_data : rgb;
  /* src/ws2811.vhdl:61:33  */
  assign n228 = n219 ? 1'b1 : running;
  /* src/ws2811.vhdl:70:54  */
  assign n229 = {27'b0, cyc_count};  //  uext
  /* src/ws2811.vhdl:70:54  */
  assign n231 = $signed(n229) < $signed(32'b00000000000000000000000000001111);
  /* src/ws2811.vhdl:71:72  */
  assign n232 = {27'b0, cyc_count};  //  uext
  /* src/ws2811.vhdl:71:72  */
  assign n234 = n232 + 32'b00000000000000000000000000000001;
  /* src/ws2811.vhdl:71:62  */
  assign n235 = n234[4:0];  // trunc
  /* src/ws2811.vhdl:72:85  */
  assign n236 = {27'b0, cyc_count};  //  uext
  /* src/ws2811.vhdl:72:85  */
  assign n238 = n236 == 32'b00000000000000000000000000001010;
  /* src/ws2811.vhdl:72:71  */
  assign n239 = n238 & bit_data_in;
  /* src/ws2811.vhdl:72:113  */
  assign n240 = ~bit_data_in;
  /* src/ws2811.vhdl:72:133  */
  assign n241 = {27'b0, cyc_count};  //  uext
  /* src/ws2811.vhdl:72:133  */
  assign n243 = n241 == 32'b00000000000000000000000000000110;
  /* src/ws2811.vhdl:72:119  */
  assign n244 = n243 & n240;
  /* src/ws2811.vhdl:72:97  */
  assign n245 = n239 | n244;
  /* src/ws2811.vhdl:72:49  */
  assign n247 = n245 ? 1'b0 : n222;
  /* src/ws2811.vhdl:77:62  */
  assign n248 = {28'b0, bit_count};  //  uext
  /* src/ws2811.vhdl:77:62  */
  assign n250 = $signed(n248) < $signed(32'b00000000000000000000000000000111);
  /* src/ws2811.vhdl:78:80  */
  assign n251 = {28'b0, bit_count};  //  uext
  /* src/ws2811.vhdl:78:80  */
  assign n253 = n251 + 32'b00000000000000000000000000000001;
  /* src/ws2811.vhdl:78:70  */
  assign n254 = n253[3:0];  // trunc
  /* src/ws2811.vhdl:79:87  */
  assign n255 = {28'b0, bit_count};  //  uext
  /* src/ws2811.vhdl:79:87  */
  assign n257 = 32'b00000000000000000000000000000111 - n255;
  /* src/ws2811.vhdl:79:99  */
  assign n259 = n257 - 32'b00000000000000000000000000000001;
  /* src/ws2811.vhdl:79:99  */
  assign n260 = n259[2:0];  // trunc
  /* src/ws2811.vhdl:77:49  */
  assign n265 = n250 ? 1'b1 : 1'b0;
  /* src/ws2811.vhdl:77:49  */
  assign n267 = n250 ? n254 : 4'b0000;
  /* src/ws2811.vhdl:77:49  */
  assign n268 = n250 ? n324 : n225;
  /* src/ws2811.vhdl:77:49  */
  assign n270 = n250 ? n228 : 1'b0;
  /* src/ws2811.vhdl:70:41  */
  assign n271 = n231 ? n247 : n265;
  /* src/ws2811.vhdl:70:41  */
  assign n273 = n231 ? n235 : 5'b00000;
  /* src/ws2811.vhdl:70:41  */
  assign n274 = n231 ? bit_count : n267;
  /* src/ws2811.vhdl:70:41  */
  assign n275 = n231 ? n225 : n268;
  /* src/ws2811.vhdl:70:41  */
  assign n276 = n231 ? n228 : n270;
  /* src/ws2811.vhdl:69:33  */
  assign n277 = running ? n271 : n222;
  /* src/ws2811.vhdl:69:33  */
  assign n278 = running ? n273 : n224;
  /* src/ws2811.vhdl:69:33  */
  assign n279 = running ? n274 : bit_count;
  /* src/ws2811.vhdl:69:33  */
  assign n280 = running ? n275 : n225;
  /* src/ws2811.vhdl:69:33  */
  assign n281 = running ? n276 : n228;
  /* src/ws2811.vhdl:52:25  */
  assign n283 = i_reset ? 1'b0 : n277;
  /* src/ws2811.vhdl:52:25  */
  assign n285 = i_reset ? 5'b00000 : n278;
  /* src/ws2811.vhdl:52:25  */
  assign n287 = i_reset ? 4'b0000 : n279;
  /* src/ws2811.vhdl:52:25  */
  assign n289 = i_reset ? 1'b0 : n280;
  /* src/ws2811.vhdl:52:25  */
  assign n291 = i_reset ? 8'b00000000 : n226;
  /* src/ws2811.vhdl:52:25  */
  assign n293 = i_reset ? 1'b0 : n281;
  /* src/ws2811.vhdl:47:9  */
  assign n308 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n309 = n308 ? n285 : cyc_count;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n310 <= n309;
  /* src/ws2811.vhdl:47:9  */
  assign n311 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n312 = n311 ? n287 : bit_count;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n313 <= n312;
  /* src/ws2811.vhdl:47:9  */
  assign n314 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n315 = n314 ? n289 : bit_data_in;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n316 <= n315;
  initial
    n316 = 1'b0;
  /* src/ws2811.vhdl:47:9  */
  assign n317 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n318 = n317 ? n291 : rgb;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n319 <= n318;
  initial
    n319 = 8'b00000000;
  /* src/ws2811.vhdl:47:9  */
  assign n320 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n321 = n320 ? n293 : running;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n322 <= n321;
  initial
    n322 = 1'b0;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n323 <= 1'b0;
    else
      n323 <= n283;
  /* src/ws2811.vhdl:79:99  */
  assign n324 = rgb[n260 * 1 +: 1]; //(Bmux)
endmodule

module spi_8
  (input  i_clock,
   input  i_reset,
   input  i_copi,
   input  i_cs,
   output [7:0] o_word,
   output o_word_ready);
  reg [3:0] bit_count;
  reg [7:0] current_word;
  wire [1:0] state;
  wire n111;
  wire [31:0] n112;
  wire n114;
  wire [6:0] n115;
  wire [7:0] n116;
  wire [2:0] n117;
  wire [2:0] n119;
  wire [31:0] n122;
  wire [31:0] n124;
  wire [3:0] n125;
  wire [7:0] n126;
  wire n129;
  wire [3:0] n131;
  wire [7:0] n132;
  wire [7:0] n133;
  wire n134;
  wire [3:0] n135;
  wire [7:0] n136;
  wire [1:0] n138;
  wire n140;
  wire [1:0] n142;
  wire n144;
  wire [1:0] n145;
  reg [7:0] n146;
  reg n148;
  reg [3:0] n150;
  reg [7:0] n151;
  reg [1:0] n153;
  reg [3:0] n170;
  reg [7:0] n171;
  reg [1:0] n172;
  reg [7:0] n173;
  reg n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n186;
  wire n187;
  wire n188;
  wire n189;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n200;
  wire n201;
  wire n202;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire [7:0] n209;
  assign o_word = n173; //(module output)
  assign o_word_ready = n174; //(module output)
  /* src/spi.vhdl:28:12  */
  always @*
    bit_count = n170; // (isignal)
  initial
    bit_count = 4'b0000;
  /* src/spi.vhdl:30:12  */
  always @*
    current_word = n171; // (isignal)
  initial
    current_word = 8'b00000000;
  /* src/spi.vhdl:38:12  */
  assign state = n172; // (signal)
  /* src/spi.vhdl:70:29  */
  assign n111 = ~i_cs;
  /* src/spi.vhdl:75:38  */
  assign n112 = {28'b0, bit_count};  //  uext
  /* src/spi.vhdl:75:38  */
  assign n114 = n112 == 32'b00000000000000000000000000000111;
  /* src/spi.vhdl:76:51  */
  assign n115 = current_word[7:1]; // extract
  /* src/spi.vhdl:76:69  */
  assign n116 = {n115, i_copi};
  /* src/spi.vhdl:81:42  */
  assign n117 = bit_count[2:0];  // trunc
  /* src/spi.vhdl:81:42  */
  assign n119 = 3'b111 - n117;
  /* src/spi.vhdl:86:52  */
  assign n122 = {28'b0, bit_count};  //  uext
  /* src/spi.vhdl:86:52  */
  assign n124 = n122 + 32'b00000000000000000000000000000001;
  /* src/spi.vhdl:86:42  */
  assign n125 = n124[3:0];  // trunc
  /* src/spi.vhdl:75:25  */
  assign n126 = n114 ? n116 : n173;
  /* src/spi.vhdl:75:25  */
  assign n129 = n114 ? 1'b1 : 1'b0;
  /* src/spi.vhdl:75:25  */
  assign n131 = n114 ? 4'b0000 : n125;
  /* src/spi.vhdl:75:25  */
  assign n132 = n114 ? current_word : n209;
  /* src/spi.vhdl:70:21  */
  assign n133 = n111 ? n173 : n126;
  /* src/spi.vhdl:70:21  */
  assign n134 = n111 ? n174 : n129;
  /* src/spi.vhdl:70:21  */
  assign n135 = n111 ? bit_count : n131;
  /* src/spi.vhdl:70:21  */
  assign n136 = n111 ? current_word : n132;
  /* src/spi.vhdl:70:21  */
  assign n138 = n111 ? 2'b00 : state;
  /* src/spi.vhdl:69:17  */
  assign n140 = state == 2'b10;
  /* src/spi.vhdl:94:21  */
  assign n142 = i_cs ? 2'b10 : state;
  /* src/spi.vhdl:90:17  */
  assign n144 = state == 2'b00;
  assign n145 = {n144, n140};
  /* src/spi.vhdl:53:13  */
  always @*
    case (n145)
      2'b10: n146 = n173;
      2'b01: n146 = n133;
      default: n146 = n173;
    endcase
  /* src/spi.vhdl:53:13  */
  always @*
    case (n145)
      2'b10: n148 = 1'b0;
      2'b01: n148 = n134;
      default: n148 = n174;
    endcase
  /* src/spi.vhdl:53:13  */
  always @*
    case (n145)
      2'b10: n150 = 4'b0000;
      2'b01: n150 = n135;
      default: n150 = bit_count;
    endcase
  /* src/spi.vhdl:53:13  */
  always @*
    case (n145)
      2'b10: n151 = current_word;
      2'b01: n151 = n136;
      default: n151 = current_word;
    endcase
  /* src/spi.vhdl:53:13  */
  always @*
    case (n145)
      2'b10: n153 = n142;
      2'b01: n153 = n138;
      default: n153 = 2'b00;
    endcase
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n170 <= 4'b0000;
    else
      n170 <= n150;
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n171 <= 8'b00000000;
    else
      n171 <= n151;
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n172 <= 2'b10;
    else
      n172 <= n153;
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n173 <= 8'b00000000;
    else
      n173 <= n146;
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n174 <= 1'b0;
    else
      n174 <= n148;
  /* src/spi.vhdl:81:29  */
  assign n175 = n119[2]; // extract
  /* src/spi.vhdl:81:29  */
  assign n176 = ~n175;
  /* src/spi.vhdl:81:29  */
  assign n177 = n119[1]; // extract
  /* src/spi.vhdl:81:29  */
  assign n178 = ~n177;
  /* src/spi.vhdl:81:29  */
  assign n179 = n176 & n178;
  /* src/spi.vhdl:81:29  */
  assign n180 = n176 & n177;
  /* src/spi.vhdl:81:29  */
  assign n181 = n175 & n178;
  /* src/spi.vhdl:81:29  */
  assign n182 = n175 & n177;
  /* src/spi.vhdl:81:29  */
  assign n183 = n119[0]; // extract
  /* src/spi.vhdl:81:29  */
  assign n184 = ~n183;
  /* src/spi.vhdl:81:29  */
  assign n185 = n179 & n184;
  /* src/spi.vhdl:81:29  */
  assign n186 = n179 & n183;
  /* src/spi.vhdl:81:29  */
  assign n187 = n180 & n184;
  /* src/spi.vhdl:81:29  */
  assign n188 = n180 & n183;
  /* src/spi.vhdl:81:29  */
  assign n189 = n181 & n184;
  /* src/spi.vhdl:81:29  */
  assign n190 = n181 & n183;
  /* src/spi.vhdl:81:29  */
  assign n191 = n182 & n184;
  /* src/spi.vhdl:81:29  */
  assign n192 = n182 & n183;
  assign n193 = current_word[0]; // extract
  /* src/spi.vhdl:81:29  */
  assign n194 = n185 ? i_copi : n193;
  assign n195 = current_word[1]; // extract
  /* src/spi.vhdl:81:29  */
  assign n196 = n186 ? i_copi : n195;
  assign n197 = current_word[2]; // extract
  /* src/spi.vhdl:81:29  */
  assign n198 = n187 ? i_copi : n197;
  assign n199 = current_word[3]; // extract
  /* src/spi.vhdl:81:29  */
  assign n200 = n188 ? i_copi : n199;
  assign n201 = current_word[4]; // extract
  /* src/spi.vhdl:81:29  */
  assign n202 = n189 ? i_copi : n201;
  assign n203 = current_word[5]; // extract
  /* src/spi.vhdl:81:29  */
  assign n204 = n190 ? i_copi : n203;
  assign n205 = current_word[6]; // extract
  /* src/spi.vhdl:81:29  */
  assign n206 = n191 ? i_copi : n205;
  assign n207 = current_word[7]; // extract
  /* src/spi.vhdl:81:29  */
  assign n208 = n192 ? i_copi : n207;
  assign n209 = {n208, n206, n204, n202, n200, n198, n196, n194};
endmodule

module tt_um_spi2ws2811x16
  (input  clk,
   input  rst_n,
   input  ena,
   input  [7:0] ui_in,
   input  [7:0] uio_in,
   output [7:0] uio_oe,
   output [7:0] uo_out,
   output [7:0] uio_out);
  wire rst;
  wire [7:0] word;
  wire word_ready;
  wire [7:0] strip_trigger;
  reg [3:0] strip_counter;
  wire n4;
  localparam [7:0] n5 = 8'b00000000;
  localparam [7:0] n6 = 8'b00000000;
  wire n7;
  wire n8;
  wire \led_o_n1_led.o_data ;
  wire n11;
  wire \led_o_n2_led.o_data ;
  wire n13;
  wire \led_o_n3_led.o_data ;
  wire n15;
  wire \led_o_n4_led.o_data ;
  wire n17;
  wire \led_o_n5_led.o_data ;
  wire n19;
  wire \led_o_n6_led.o_data ;
  wire n21;
  wire \led_o_n7_led.o_data ;
  wire n23;
  wire \led_o_n8_led.o_data ;
  wire n25;
  wire [31:0] n30;
  wire n32;
  wire [31:0] n33;
  wire [31:0] n35;
  wire [3:0] n36;
  wire [3:0] n38;
  wire [31:0] n44;
  wire n46;
  wire n47;
  wire n48;
  wire [31:0] n51;
  wire n53;
  wire n54;
  wire n55;
  wire [31:0] n58;
  wire n60;
  wire n61;
  wire n62;
  wire [31:0] n65;
  wire n67;
  wire n68;
  wire n69;
  wire [31:0] n72;
  wire n74;
  wire n75;
  wire n76;
  wire [31:0] n79;
  wire n81;
  wire n82;
  wire n83;
  wire [31:0] n86;
  wire n88;
  wire n89;
  wire n90;
  wire [31:0] n93;
  wire n95;
  wire n96;
  wire n97;
  wire [7:0] n101;
  reg [3:0] n102;
  wire [7:0] n103;
  assign uio_oe = n5; //(module output)
  assign uo_out = n103; //(module output)
  assign uio_out = n6; //(module output)
  /* src/top.vhdl:21:16  */
  assign rst = n4; // (signal)
  /* src/top.vhdl:28:16  */
  assign strip_trigger = n101; // (signal)
  /* src/top.vhdl:29:16  */
  always @*
    strip_counter = n102; // (isignal)
  initial
    strip_counter = 4'b0000;
  /* src/top.vhdl:31:16  */
  assign n4 = ~rst_n;
  /* src/top.vhdl:35:9  */
  spi_8 spi_controller (
    .i_clock(clk),
    .i_reset(rst),
    .i_copi(n7),
    .i_cs(n8),
    .o_word(word),
    .o_word_ready(word_ready));
  /* src/top.vhdl:41:32  */
  assign n7 = ui_in[1]; // extract
  /* src/top.vhdl:40:30  */
  assign n8 = ui_in[0]; // extract
  /* src/top.vhdl:53:17  */
  ws2811_8 led_o_n1_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n11),
    .i_pixel_data(word),
    .o_data(\led_o_n1_led.o_data ));
  /* src/top.vhdl:58:51  */
  assign n11 = strip_trigger[0]; // extract
  /* src/top.vhdl:53:17  */
  ws2811_8 led_o_n2_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n13),
    .i_pixel_data(word),
    .o_data(\led_o_n2_led.o_data ));
  /* src/top.vhdl:58:51  */
  assign n13 = strip_trigger[1]; // extract
  /* src/top.vhdl:53:17  */
  ws2811_8 led_o_n3_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n15),
    .i_pixel_data(word),
    .o_data(\led_o_n3_led.o_data ));
  /* src/top.vhdl:58:51  */
  assign n15 = strip_trigger[2]; // extract
  /* src/top.vhdl:53:17  */
  ws2811_8 led_o_n4_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n17),
    .i_pixel_data(word),
    .o_data(\led_o_n4_led.o_data ));
  /* src/top.vhdl:58:51  */
  assign n17 = strip_trigger[3]; // extract
  /* src/top.vhdl:53:17  */
  ws2811_8 led_o_n5_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n19),
    .i_pixel_data(word),
    .o_data(\led_o_n5_led.o_data ));
  /* src/top.vhdl:58:51  */
  assign n19 = strip_trigger[4]; // extract
  /* src/top.vhdl:53:17  */
  ws2811_8 led_o_n6_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n21),
    .i_pixel_data(word),
    .o_data(\led_o_n6_led.o_data ));
  /* src/top.vhdl:58:51  */
  assign n21 = strip_trigger[5]; // extract
  /* src/top.vhdl:53:17  */
  ws2811_8 led_o_n7_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n23),
    .i_pixel_data(word),
    .o_data(\led_o_n7_led.o_data ));
  /* src/top.vhdl:58:51  */
  assign n23 = strip_trigger[6]; // extract
  /* src/top.vhdl:53:17  */
  ws2811_8 led_o_n8_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n25),
    .i_pixel_data(word),
    .o_data(\led_o_n8_led.o_data ));
  /* src/top.vhdl:58:51  */
  assign n25 = strip_trigger[7]; // extract
  /* src/top.vhdl:85:42  */
  assign n30 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:85:42  */
  assign n32 = $signed(n30) < $signed(32'b00000000000000000000000000001111);
  /* src/top.vhdl:86:64  */
  assign n33 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:86:64  */
  assign n35 = n33 + 32'b00000000000000000000000000000001;
  /* src/top.vhdl:86:50  */
  assign n36 = n35[3:0];  // trunc
  /* src/top.vhdl:85:25  */
  assign n38 = n32 ? n36 : 4'b0000;
  /* src/top.vhdl:94:82  */
  assign n44 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n46 = n44 == 32'b00000000000000000000000000000000;
  /* src/top.vhdl:94:64  */
  assign n47 = n46 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n48 = n47 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n51 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n53 = n51 == 32'b00000000000000000000000000000001;
  /* src/top.vhdl:94:64  */
  assign n54 = n53 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n55 = n54 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n58 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n60 = n58 == 32'b00000000000000000000000000000010;
  /* src/top.vhdl:94:64  */
  assign n61 = n60 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n62 = n61 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n65 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n67 = n65 == 32'b00000000000000000000000000000011;
  /* src/top.vhdl:94:64  */
  assign n68 = n67 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n69 = n68 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n72 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n74 = n72 == 32'b00000000000000000000000000000100;
  /* src/top.vhdl:94:64  */
  assign n75 = n74 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n76 = n75 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n79 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n81 = n79 == 32'b00000000000000000000000000000101;
  /* src/top.vhdl:94:64  */
  assign n82 = n81 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n83 = n82 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n86 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n88 = n86 == 32'b00000000000000000000000000000110;
  /* src/top.vhdl:94:64  */
  assign n89 = n88 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n90 = n89 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n93 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n95 = n93 == 32'b00000000000000000000000000000111;
  /* src/top.vhdl:94:64  */
  assign n96 = n95 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n97 = n96 ? 1'b1 : 1'b0;
  assign n101 = {n97, n90, n83, n76, n69, n62, n55, n48};
  /* src/top.vhdl:84:17  */
  always @(negedge word_ready or posedge rst)
    if (rst)
      n102 <= 4'b0000;
    else
      n102 <= n38;
  /* src/top.vhdl:82:17  */
  assign n103 = {\led_o_n8_led.o_data , \led_o_n7_led.o_data , \led_o_n6_led.o_data , \led_o_n5_led.o_data , \led_o_n4_led.o_data , \led_o_n3_led.o_data , \led_o_n2_led.o_data , \led_o_n1_led.o_data };
endmodule

