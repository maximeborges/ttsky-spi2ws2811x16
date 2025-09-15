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
  wire n273;
  wire n274;
  wire n275;
  wire n277;
  wire [4:0] n279;
  wire n280;
  wire [7:0] n281;
  wire n283;
  wire [31:0] n284;
  wire n286;
  wire [31:0] n287;
  wire [31:0] n289;
  wire [4:0] n290;
  wire [31:0] n291;
  wire n293;
  wire n294;
  wire n295;
  wire [31:0] n296;
  wire n298;
  wire n299;
  wire n300;
  wire n302;
  wire [31:0] n303;
  wire n305;
  wire [31:0] n306;
  wire [31:0] n308;
  wire [3:0] n309;
  wire [31:0] n310;
  wire [31:0] n312;
  wire [31:0] n314;
  wire [2:0] n315;
  wire n320;
  wire [3:0] n322;
  wire n323;
  wire n325;
  wire n326;
  wire [4:0] n328;
  wire [3:0] n329;
  wire n330;
  wire n331;
  wire n332;
  wire [4:0] n333;
  wire [3:0] n334;
  wire n335;
  wire n336;
  wire n338;
  wire [4:0] n340;
  wire [3:0] n342;
  wire n344;
  wire [7:0] n346;
  wire n348;
  wire n363;
  wire [4:0] n364;
  reg [4:0] n365;
  wire n366;
  wire [3:0] n367;
  reg [3:0] n368;
  wire n369;
  wire n370;
  reg n371;
  wire n372;
  wire [7:0] n373;
  reg [7:0] n374;
  wire n375;
  wire n376;
  reg n377;
  reg n378;
  wire n379;
  assign o_data = n378; //(module output)
  /* src/ws2811.vhdl:26:16  */
  assign cyc_count = n365; // (signal)
  /* src/ws2811.vhdl:27:16  */
  assign bit_count = n368; // (signal)
  /* src/ws2811.vhdl:28:16  */
  always @*
    bit_data_in = n371; // (isignal)
  initial
    bit_data_in = 1'b0;
  /* src/ws2811.vhdl:30:16  */
  always @*
    rgb = n374; // (isignal)
  initial
    rgb = 8'b00000000;
  /* src/ws2811.vhdl:32:16  */
  always @*
    running = n377; // (isignal)
  initial
    running = 1'b0;
  /* src/ws2811.vhdl:61:44  */
  assign n273 = ~running;
  /* src/ws2811.vhdl:61:50  */
  assign n274 = i_trigger & n273;
  /* src/ws2811.vhdl:64:68  */
  assign n275 = i_pixel_data[7]; // extract
  /* src/ws2811.vhdl:61:33  */
  assign n277 = n274 ? 1'b1 : n378;
  /* src/ws2811.vhdl:61:33  */
  assign n279 = n274 ? 5'b00001 : cyc_count;
  /* src/ws2811.vhdl:61:33  */
  assign n280 = n274 ? n275 : bit_data_in;
  /* src/ws2811.vhdl:61:33  */
  assign n281 = n274 ? i_pixel_data : rgb;
  /* src/ws2811.vhdl:61:33  */
  assign n283 = n274 ? 1'b1 : running;
  /* src/ws2811.vhdl:70:54  */
  assign n284 = {27'b0, cyc_count};  //  uext
  /* src/ws2811.vhdl:70:54  */
  assign n286 = $signed(n284) < $signed(32'b00000000000000000000000000001111);
  /* src/ws2811.vhdl:71:72  */
  assign n287 = {27'b0, cyc_count};  //  uext
  /* src/ws2811.vhdl:71:72  */
  assign n289 = n287 + 32'b00000000000000000000000000000001;
  /* src/ws2811.vhdl:71:62  */
  assign n290 = n289[4:0];  // trunc
  /* src/ws2811.vhdl:72:85  */
  assign n291 = {27'b0, cyc_count};  //  uext
  /* src/ws2811.vhdl:72:85  */
  assign n293 = n291 == 32'b00000000000000000000000000001010;
  /* src/ws2811.vhdl:72:71  */
  assign n294 = n293 & bit_data_in;
  /* src/ws2811.vhdl:72:113  */
  assign n295 = ~bit_data_in;
  /* src/ws2811.vhdl:72:133  */
  assign n296 = {27'b0, cyc_count};  //  uext
  /* src/ws2811.vhdl:72:133  */
  assign n298 = n296 == 32'b00000000000000000000000000000110;
  /* src/ws2811.vhdl:72:119  */
  assign n299 = n298 & n295;
  /* src/ws2811.vhdl:72:97  */
  assign n300 = n294 | n299;
  /* src/ws2811.vhdl:72:49  */
  assign n302 = n300 ? 1'b0 : n277;
  /* src/ws2811.vhdl:77:62  */
  assign n303 = {28'b0, bit_count};  //  uext
  /* src/ws2811.vhdl:77:62  */
  assign n305 = $signed(n303) < $signed(32'b00000000000000000000000000000111);
  /* src/ws2811.vhdl:78:80  */
  assign n306 = {28'b0, bit_count};  //  uext
  /* src/ws2811.vhdl:78:80  */
  assign n308 = n306 + 32'b00000000000000000000000000000001;
  /* src/ws2811.vhdl:78:70  */
  assign n309 = n308[3:0];  // trunc
  /* src/ws2811.vhdl:79:87  */
  assign n310 = {28'b0, bit_count};  //  uext
  /* src/ws2811.vhdl:79:87  */
  assign n312 = 32'b00000000000000000000000000000111 - n310;
  /* src/ws2811.vhdl:79:99  */
  assign n314 = n312 - 32'b00000000000000000000000000000001;
  /* src/ws2811.vhdl:79:99  */
  assign n315 = n314[2:0];  // trunc
  /* src/ws2811.vhdl:77:49  */
  assign n320 = n305 ? 1'b1 : 1'b0;
  /* src/ws2811.vhdl:77:49  */
  assign n322 = n305 ? n309 : 4'b0000;
  /* src/ws2811.vhdl:77:49  */
  assign n323 = n305 ? n379 : n280;
  /* src/ws2811.vhdl:77:49  */
  assign n325 = n305 ? n283 : 1'b0;
  /* src/ws2811.vhdl:70:41  */
  assign n326 = n286 ? n302 : n320;
  /* src/ws2811.vhdl:70:41  */
  assign n328 = n286 ? n290 : 5'b00000;
  /* src/ws2811.vhdl:70:41  */
  assign n329 = n286 ? bit_count : n322;
  /* src/ws2811.vhdl:70:41  */
  assign n330 = n286 ? n280 : n323;
  /* src/ws2811.vhdl:70:41  */
  assign n331 = n286 ? n283 : n325;
  /* src/ws2811.vhdl:69:33  */
  assign n332 = running ? n326 : n277;
  /* src/ws2811.vhdl:69:33  */
  assign n333 = running ? n328 : n279;
  /* src/ws2811.vhdl:69:33  */
  assign n334 = running ? n329 : bit_count;
  /* src/ws2811.vhdl:69:33  */
  assign n335 = running ? n330 : n280;
  /* src/ws2811.vhdl:69:33  */
  assign n336 = running ? n331 : n283;
  /* src/ws2811.vhdl:52:25  */
  assign n338 = i_reset ? 1'b0 : n332;
  /* src/ws2811.vhdl:52:25  */
  assign n340 = i_reset ? 5'b00000 : n333;
  /* src/ws2811.vhdl:52:25  */
  assign n342 = i_reset ? 4'b0000 : n334;
  /* src/ws2811.vhdl:52:25  */
  assign n344 = i_reset ? 1'b0 : n335;
  /* src/ws2811.vhdl:52:25  */
  assign n346 = i_reset ? 8'b00000000 : n281;
  /* src/ws2811.vhdl:52:25  */
  assign n348 = i_reset ? 1'b0 : n336;
  /* src/ws2811.vhdl:47:9  */
  assign n363 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n364 = n363 ? n340 : cyc_count;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n365 <= n364;
  /* src/ws2811.vhdl:47:9  */
  assign n366 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n367 = n366 ? n342 : bit_count;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n368 <= n367;
  /* src/ws2811.vhdl:47:9  */
  assign n369 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n370 = n369 ? n344 : bit_data_in;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n371 <= n370;
  initial
    n371 = 1'b0;
  /* src/ws2811.vhdl:47:9  */
  assign n372 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n373 = n372 ? n346 : rgb;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n374 <= n373;
  initial
    n374 = 8'b00000000;
  /* src/ws2811.vhdl:47:9  */
  assign n375 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n376 = n375 ? n348 : running;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n377 <= n376;
  initial
    n377 = 1'b0;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n378 <= 1'b0;
    else
      n378 <= n338;
  /* src/ws2811.vhdl:79:99  */
  assign n379 = rgb[n315 * 1 +: 1]; //(Bmux)
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
  wire n166;
  wire [31:0] n167;
  wire n169;
  wire [6:0] n170;
  wire [7:0] n171;
  wire [2:0] n172;
  wire [2:0] n174;
  wire [31:0] n177;
  wire [31:0] n179;
  wire [3:0] n180;
  wire [7:0] n181;
  wire n184;
  wire [3:0] n186;
  wire [7:0] n187;
  wire [7:0] n188;
  wire n189;
  wire [3:0] n190;
  wire [7:0] n191;
  wire [1:0] n193;
  wire n195;
  wire [1:0] n197;
  wire n199;
  wire [1:0] n200;
  reg [7:0] n201;
  reg n203;
  reg [3:0] n205;
  reg [7:0] n206;
  reg [1:0] n208;
  reg [3:0] n225;
  reg [7:0] n226;
  reg [1:0] n227;
  reg [7:0] n228;
  reg n229;
  wire n230;
  wire n231;
  wire n232;
  wire n233;
  wire n234;
  wire n235;
  wire n236;
  wire n237;
  wire n238;
  wire n239;
  wire n240;
  wire n241;
  wire n242;
  wire n243;
  wire n244;
  wire n245;
  wire n246;
  wire n247;
  wire n248;
  wire n249;
  wire n250;
  wire n251;
  wire n252;
  wire n253;
  wire n254;
  wire n255;
  wire n256;
  wire n257;
  wire n258;
  wire n259;
  wire n260;
  wire n261;
  wire n262;
  wire n263;
  wire [7:0] n264;
  assign o_word = n228; //(module output)
  assign o_word_ready = n229; //(module output)
  /* src/spi.vhdl:28:12  */
  always @*
    bit_count = n225; // (isignal)
  initial
    bit_count = 4'b0000;
  /* src/spi.vhdl:30:12  */
  always @*
    current_word = n226; // (isignal)
  initial
    current_word = 8'b00000000;
  /* src/spi.vhdl:38:12  */
  assign state = n227; // (signal)
  /* src/spi.vhdl:70:29  */
  assign n166 = ~i_cs;
  /* src/spi.vhdl:75:38  */
  assign n167 = {28'b0, bit_count};  //  uext
  /* src/spi.vhdl:75:38  */
  assign n169 = n167 == 32'b00000000000000000000000000000111;
  /* src/spi.vhdl:76:51  */
  assign n170 = current_word[7:1]; // extract
  /* src/spi.vhdl:76:69  */
  assign n171 = {n170, i_copi};
  /* src/spi.vhdl:81:42  */
  assign n172 = bit_count[2:0];  // trunc
  /* src/spi.vhdl:81:42  */
  assign n174 = 3'b111 - n172;
  /* src/spi.vhdl:86:52  */
  assign n177 = {28'b0, bit_count};  //  uext
  /* src/spi.vhdl:86:52  */
  assign n179 = n177 + 32'b00000000000000000000000000000001;
  /* src/spi.vhdl:86:42  */
  assign n180 = n179[3:0];  // trunc
  /* src/spi.vhdl:75:25  */
  assign n181 = n169 ? n171 : n228;
  /* src/spi.vhdl:75:25  */
  assign n184 = n169 ? 1'b1 : 1'b0;
  /* src/spi.vhdl:75:25  */
  assign n186 = n169 ? 4'b0000 : n180;
  /* src/spi.vhdl:75:25  */
  assign n187 = n169 ? current_word : n264;
  /* src/spi.vhdl:70:21  */
  assign n188 = n166 ? n228 : n181;
  /* src/spi.vhdl:70:21  */
  assign n189 = n166 ? n229 : n184;
  /* src/spi.vhdl:70:21  */
  assign n190 = n166 ? bit_count : n186;
  /* src/spi.vhdl:70:21  */
  assign n191 = n166 ? current_word : n187;
  /* src/spi.vhdl:70:21  */
  assign n193 = n166 ? 2'b00 : state;
  /* src/spi.vhdl:69:17  */
  assign n195 = state == 2'b10;
  /* src/spi.vhdl:94:21  */
  assign n197 = i_cs ? 2'b10 : state;
  /* src/spi.vhdl:90:17  */
  assign n199 = state == 2'b00;
  assign n200 = {n199, n195};
  /* src/spi.vhdl:53:13  */
  always @*
    case (n200)
      2'b10: n201 = n228;
      2'b01: n201 = n188;
      default: n201 = n228;
    endcase
  /* src/spi.vhdl:53:13  */
  always @*
    case (n200)
      2'b10: n203 = 1'b0;
      2'b01: n203 = n189;
      default: n203 = n229;
    endcase
  /* src/spi.vhdl:53:13  */
  always @*
    case (n200)
      2'b10: n205 = 4'b0000;
      2'b01: n205 = n190;
      default: n205 = bit_count;
    endcase
  /* src/spi.vhdl:53:13  */
  always @*
    case (n200)
      2'b10: n206 = current_word;
      2'b01: n206 = n191;
      default: n206 = current_word;
    endcase
  /* src/spi.vhdl:53:13  */
  always @*
    case (n200)
      2'b10: n208 = n197;
      2'b01: n208 = n193;
      default: n208 = 2'b00;
    endcase
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n225 <= 4'b0000;
    else
      n225 <= n205;
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n226 <= 8'b00000000;
    else
      n226 <= n206;
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n227 <= 2'b10;
    else
      n227 <= n208;
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n228 <= 8'b00000000;
    else
      n228 <= n201;
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n229 <= 1'b0;
    else
      n229 <= n203;
  /* src/spi.vhdl:81:29  */
  assign n230 = n174[2]; // extract
  /* src/spi.vhdl:81:29  */
  assign n231 = ~n230;
  /* src/spi.vhdl:81:29  */
  assign n232 = n174[1]; // extract
  /* src/spi.vhdl:81:29  */
  assign n233 = ~n232;
  /* src/spi.vhdl:81:29  */
  assign n234 = n231 & n233;
  /* src/spi.vhdl:81:29  */
  assign n235 = n231 & n232;
  /* src/spi.vhdl:81:29  */
  assign n236 = n230 & n233;
  /* src/spi.vhdl:81:29  */
  assign n237 = n230 & n232;
  /* src/spi.vhdl:81:29  */
  assign n238 = n174[0]; // extract
  /* src/spi.vhdl:81:29  */
  assign n239 = ~n238;
  /* src/spi.vhdl:81:29  */
  assign n240 = n234 & n239;
  /* src/spi.vhdl:81:29  */
  assign n241 = n234 & n238;
  /* src/spi.vhdl:81:29  */
  assign n242 = n235 & n239;
  /* src/spi.vhdl:81:29  */
  assign n243 = n235 & n238;
  /* src/spi.vhdl:81:29  */
  assign n244 = n236 & n239;
  /* src/spi.vhdl:81:29  */
  assign n245 = n236 & n238;
  /* src/spi.vhdl:81:29  */
  assign n246 = n237 & n239;
  /* src/spi.vhdl:81:29  */
  assign n247 = n237 & n238;
  assign n248 = current_word[0]; // extract
  /* src/spi.vhdl:81:29  */
  assign n249 = n240 ? i_copi : n248;
  assign n250 = current_word[1]; // extract
  /* src/spi.vhdl:81:29  */
  assign n251 = n241 ? i_copi : n250;
  assign n252 = current_word[2]; // extract
  /* src/spi.vhdl:81:29  */
  assign n253 = n242 ? i_copi : n252;
  assign n254 = current_word[3]; // extract
  /* src/spi.vhdl:81:29  */
  assign n255 = n243 ? i_copi : n254;
  assign n256 = current_word[4]; // extract
  /* src/spi.vhdl:81:29  */
  assign n257 = n244 ? i_copi : n256;
  assign n258 = current_word[5]; // extract
  /* src/spi.vhdl:81:29  */
  assign n259 = n245 ? i_copi : n258;
  assign n260 = current_word[6]; // extract
  /* src/spi.vhdl:81:29  */
  assign n261 = n246 ? i_copi : n260;
  assign n262 = current_word[7]; // extract
  /* src/spi.vhdl:81:29  */
  assign n263 = n247 ? i_copi : n262;
  assign n264 = {n263, n261, n259, n257, n255, n253, n251, n249};
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
  wire [13:0] strip_trigger;
  reg [3:0] strip_counter;
  wire n4;
  localparam [7:0] n5 = 8'b00000000;
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
  wire \led_io_n1_led.o_data ;
  wire n27;
  wire \led_io_n2_led.o_data ;
  wire n29;
  wire \led_io_n3_led.o_data ;
  wire n31;
  wire \led_io_n4_led.o_data ;
  wire n33;
  wire \led_io_n5_led.o_data ;
  wire n35;
  wire \led_io_n6_led.o_data ;
  wire n37;
  wire [31:0] n42;
  wire n44;
  wire [31:0] n45;
  wire [31:0] n47;
  wire [3:0] n48;
  wire [3:0] n50;
  wire [31:0] n56;
  wire n58;
  wire n59;
  wire n60;
  wire [31:0] n63;
  wire n65;
  wire n66;
  wire n67;
  wire [31:0] n70;
  wire n72;
  wire n73;
  wire n74;
  wire [31:0] n77;
  wire n79;
  wire n80;
  wire n81;
  wire [31:0] n84;
  wire n86;
  wire n87;
  wire n88;
  wire [31:0] n91;
  wire n93;
  wire n94;
  wire n95;
  wire [31:0] n98;
  wire n100;
  wire n101;
  wire n102;
  wire [31:0] n105;
  wire n107;
  wire n108;
  wire n109;
  wire [31:0] n112;
  wire n114;
  wire n115;
  wire n116;
  wire [31:0] n119;
  wire n121;
  wire n122;
  wire n123;
  wire [31:0] n126;
  wire n128;
  wire n129;
  wire n130;
  wire [31:0] n133;
  wire n135;
  wire n136;
  wire n137;
  wire [31:0] n140;
  wire n142;
  wire n143;
  wire n144;
  wire [31:0] n147;
  wire n149;
  wire n150;
  wire n151;
  wire [13:0] n155;
  reg [3:0] n156;
  wire [7:0] n157;
  wire [7:0] n158;
  assign uio_oe = n5; //(module output)
  assign uo_out = n157; //(module output)
  assign uio_out = n158; //(module output)
  /* src/top.vhdl:21:16  */
  assign rst = n4; // (signal)
  /* src/top.vhdl:28:16  */
  assign strip_trigger = n155; // (signal)
  /* src/top.vhdl:29:16  */
  always @*
    strip_counter = n156; // (isignal)
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
  /* src/top.vhdl:68:17  */
  ws2811_8 led_io_n1_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n27),
    .i_pixel_data(word),
    .o_data(\led_io_n1_led.o_data ));
  /* src/top.vhdl:73:51  */
  assign n27 = strip_trigger[8]; // extract
  /* src/top.vhdl:68:17  */
  ws2811_8 led_io_n2_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n29),
    .i_pixel_data(word),
    .o_data(\led_io_n2_led.o_data ));
  /* src/top.vhdl:73:51  */
  assign n29 = strip_trigger[9]; // extract
  /* src/top.vhdl:68:17  */
  ws2811_8 led_io_n3_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n31),
    .i_pixel_data(word),
    .o_data(\led_io_n3_led.o_data ));
  /* src/top.vhdl:73:51  */
  assign n31 = strip_trigger[10]; // extract
  /* src/top.vhdl:68:17  */
  ws2811_8 led_io_n4_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n33),
    .i_pixel_data(word),
    .o_data(\led_io_n4_led.o_data ));
  /* src/top.vhdl:73:51  */
  assign n33 = strip_trigger[11]; // extract
  /* src/top.vhdl:68:17  */
  ws2811_8 led_io_n5_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n35),
    .i_pixel_data(word),
    .o_data(\led_io_n5_led.o_data ));
  /* src/top.vhdl:73:51  */
  assign n35 = strip_trigger[12]; // extract
  /* src/top.vhdl:68:17  */
  ws2811_8 led_io_n6_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n37),
    .i_pixel_data(word),
    .o_data(\led_io_n6_led.o_data ));
  /* src/top.vhdl:73:51  */
  assign n37 = strip_trigger[13]; // extract
  /* src/top.vhdl:85:42  */
  assign n42 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:85:42  */
  assign n44 = $signed(n42) < $signed(32'b00000000000000000000000000001111);
  /* src/top.vhdl:86:64  */
  assign n45 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:86:64  */
  assign n47 = n45 + 32'b00000000000000000000000000000001;
  /* src/top.vhdl:86:50  */
  assign n48 = n47[3:0];  // trunc
  /* src/top.vhdl:85:25  */
  assign n50 = n44 ? n48 : 4'b0000;
  /* src/top.vhdl:94:82  */
  assign n56 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n58 = n56 == 32'b00000000000000000000000000000000;
  /* src/top.vhdl:94:64  */
  assign n59 = n58 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n60 = n59 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n63 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n65 = n63 == 32'b00000000000000000000000000000001;
  /* src/top.vhdl:94:64  */
  assign n66 = n65 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n67 = n66 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n70 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n72 = n70 == 32'b00000000000000000000000000000010;
  /* src/top.vhdl:94:64  */
  assign n73 = n72 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n74 = n73 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n77 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n79 = n77 == 32'b00000000000000000000000000000011;
  /* src/top.vhdl:94:64  */
  assign n80 = n79 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n81 = n80 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n84 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n86 = n84 == 32'b00000000000000000000000000000100;
  /* src/top.vhdl:94:64  */
  assign n87 = n86 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n88 = n87 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n91 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n93 = n91 == 32'b00000000000000000000000000000101;
  /* src/top.vhdl:94:64  */
  assign n94 = n93 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n95 = n94 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n98 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n100 = n98 == 32'b00000000000000000000000000000110;
  /* src/top.vhdl:94:64  */
  assign n101 = n100 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n102 = n101 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n105 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n107 = n105 == 32'b00000000000000000000000000000111;
  /* src/top.vhdl:94:64  */
  assign n108 = n107 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n109 = n108 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n112 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n114 = n112 == 32'b00000000000000000000000000001000;
  /* src/top.vhdl:94:64  */
  assign n115 = n114 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n116 = n115 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n119 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n121 = n119 == 32'b00000000000000000000000000001001;
  /* src/top.vhdl:94:64  */
  assign n122 = n121 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n123 = n122 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n126 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n128 = n126 == 32'b00000000000000000000000000001010;
  /* src/top.vhdl:94:64  */
  assign n129 = n128 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n130 = n129 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n133 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n135 = n133 == 32'b00000000000000000000000000001011;
  /* src/top.vhdl:94:64  */
  assign n136 = n135 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n137 = n136 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n140 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n142 = n140 == 32'b00000000000000000000000000001100;
  /* src/top.vhdl:94:64  */
  assign n143 = n142 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n144 = n143 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n147 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n149 = n147 == 32'b00000000000000000000000000001101;
  /* src/top.vhdl:94:64  */
  assign n150 = n149 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n151 = n150 ? 1'b1 : 1'b0;
  assign n155 = {n151, n144, n137, n130, n123, n116, n109, n102, n95, n88, n81, n74, n67, n60};
  /* src/top.vhdl:84:17  */
  always @(negedge word_ready or posedge rst)
    if (rst)
      n156 <= 4'b0000;
    else
      n156 <= n50;
  /* src/top.vhdl:82:17  */
  assign n157 = {\led_o_n8_led.o_data , \led_o_n7_led.o_data , \led_o_n6_led.o_data , \led_o_n5_led.o_data , \led_o_n4_led.o_data , \led_o_n3_led.o_data , \led_o_n2_led.o_data , \led_o_n1_led.o_data };
  assign n158 = {2'b00, \led_io_n6_led.o_data , \led_io_n5_led.o_data , \led_io_n4_led.o_data , \led_io_n3_led.o_data , \led_io_n2_led.o_data , \led_io_n1_led.o_data };
endmodule

