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
  wire n290;
  wire n291;
  wire n292;
  wire n294;
  wire [4:0] n296;
  wire n297;
  wire [7:0] n298;
  wire n300;
  wire [31:0] n301;
  wire n303;
  wire [31:0] n304;
  wire [31:0] n306;
  wire [4:0] n307;
  wire [31:0] n308;
  wire n310;
  wire n311;
  wire n312;
  wire [31:0] n313;
  wire n315;
  wire n316;
  wire n317;
  wire n319;
  wire [31:0] n320;
  wire n322;
  wire [31:0] n323;
  wire [31:0] n325;
  wire [3:0] n326;
  wire [31:0] n327;
  wire [31:0] n329;
  wire [31:0] n331;
  wire [2:0] n332;
  wire n337;
  wire [3:0] n339;
  wire n340;
  wire n342;
  wire n343;
  wire [4:0] n345;
  wire [3:0] n346;
  wire n347;
  wire n348;
  wire n349;
  wire [4:0] n350;
  wire [3:0] n351;
  wire n352;
  wire n353;
  wire n355;
  wire [4:0] n357;
  wire [3:0] n359;
  wire n361;
  wire [7:0] n363;
  wire n365;
  wire n380;
  wire [4:0] n381;
  reg [4:0] n382;
  wire n383;
  wire [3:0] n384;
  reg [3:0] n385;
  wire n386;
  wire n387;
  reg n388;
  wire n389;
  wire [7:0] n390;
  reg [7:0] n391;
  wire n392;
  wire n393;
  reg n394;
  reg n395;
  wire n396;
  assign o_data = n395; //(module output)
  /* src/ws2811.vhdl:26:16  */
  assign cyc_count = n382; // (signal)
  /* src/ws2811.vhdl:27:16  */
  assign bit_count = n385; // (signal)
  /* src/ws2811.vhdl:28:16  */
  always @*
    bit_data_in = n388; // (isignal)
  initial
    bit_data_in = 1'b0;
  /* src/ws2811.vhdl:30:16  */
  always @*
    rgb = n391; // (isignal)
  initial
    rgb = 8'b00000000;
  /* src/ws2811.vhdl:32:16  */
  always @*
    running = n394; // (isignal)
  initial
    running = 1'b0;
  /* src/ws2811.vhdl:61:44  */
  assign n290 = ~running;
  /* src/ws2811.vhdl:61:50  */
  assign n291 = i_trigger & n290;
  /* src/ws2811.vhdl:64:68  */
  assign n292 = i_pixel_data[7]; // extract
  /* src/ws2811.vhdl:61:33  */
  assign n294 = n291 ? 1'b1 : n395;
  /* src/ws2811.vhdl:61:33  */
  assign n296 = n291 ? 5'b00001 : cyc_count;
  /* src/ws2811.vhdl:61:33  */
  assign n297 = n291 ? n292 : bit_data_in;
  /* src/ws2811.vhdl:61:33  */
  assign n298 = n291 ? i_pixel_data : rgb;
  /* src/ws2811.vhdl:61:33  */
  assign n300 = n291 ? 1'b1 : running;
  /* src/ws2811.vhdl:70:54  */
  assign n301 = {27'b0, cyc_count};  //  uext
  /* src/ws2811.vhdl:70:54  */
  assign n303 = $signed(n301) < $signed(32'b00000000000000000000000000001111);
  /* src/ws2811.vhdl:71:72  */
  assign n304 = {27'b0, cyc_count};  //  uext
  /* src/ws2811.vhdl:71:72  */
  assign n306 = n304 + 32'b00000000000000000000000000000001;
  /* src/ws2811.vhdl:71:62  */
  assign n307 = n306[4:0];  // trunc
  /* src/ws2811.vhdl:72:85  */
  assign n308 = {27'b0, cyc_count};  //  uext
  /* src/ws2811.vhdl:72:85  */
  assign n310 = n308 == 32'b00000000000000000000000000001010;
  /* src/ws2811.vhdl:72:71  */
  assign n311 = n310 & bit_data_in;
  /* src/ws2811.vhdl:72:113  */
  assign n312 = ~bit_data_in;
  /* src/ws2811.vhdl:72:133  */
  assign n313 = {27'b0, cyc_count};  //  uext
  /* src/ws2811.vhdl:72:133  */
  assign n315 = n313 == 32'b00000000000000000000000000000110;
  /* src/ws2811.vhdl:72:119  */
  assign n316 = n315 & n312;
  /* src/ws2811.vhdl:72:97  */
  assign n317 = n311 | n316;
  /* src/ws2811.vhdl:72:49  */
  assign n319 = n317 ? 1'b0 : n294;
  /* src/ws2811.vhdl:77:62  */
  assign n320 = {28'b0, bit_count};  //  uext
  /* src/ws2811.vhdl:77:62  */
  assign n322 = $signed(n320) < $signed(32'b00000000000000000000000000000111);
  /* src/ws2811.vhdl:78:80  */
  assign n323 = {28'b0, bit_count};  //  uext
  /* src/ws2811.vhdl:78:80  */
  assign n325 = n323 + 32'b00000000000000000000000000000001;
  /* src/ws2811.vhdl:78:70  */
  assign n326 = n325[3:0];  // trunc
  /* src/ws2811.vhdl:79:87  */
  assign n327 = {28'b0, bit_count};  //  uext
  /* src/ws2811.vhdl:79:87  */
  assign n329 = 32'b00000000000000000000000000000111 - n327;
  /* src/ws2811.vhdl:79:99  */
  assign n331 = n329 - 32'b00000000000000000000000000000001;
  /* src/ws2811.vhdl:79:99  */
  assign n332 = n331[2:0];  // trunc
  /* src/ws2811.vhdl:77:49  */
  assign n337 = n322 ? 1'b1 : 1'b0;
  /* src/ws2811.vhdl:77:49  */
  assign n339 = n322 ? n326 : 4'b0000;
  /* src/ws2811.vhdl:77:49  */
  assign n340 = n322 ? n396 : n297;
  /* src/ws2811.vhdl:77:49  */
  assign n342 = n322 ? n300 : 1'b0;
  /* src/ws2811.vhdl:70:41  */
  assign n343 = n303 ? n319 : n337;
  /* src/ws2811.vhdl:70:41  */
  assign n345 = n303 ? n307 : 5'b00000;
  /* src/ws2811.vhdl:70:41  */
  assign n346 = n303 ? bit_count : n339;
  /* src/ws2811.vhdl:70:41  */
  assign n347 = n303 ? n297 : n340;
  /* src/ws2811.vhdl:70:41  */
  assign n348 = n303 ? n300 : n342;
  /* src/ws2811.vhdl:69:33  */
  assign n349 = running ? n343 : n294;
  /* src/ws2811.vhdl:69:33  */
  assign n350 = running ? n345 : n296;
  /* src/ws2811.vhdl:69:33  */
  assign n351 = running ? n346 : bit_count;
  /* src/ws2811.vhdl:69:33  */
  assign n352 = running ? n347 : n297;
  /* src/ws2811.vhdl:69:33  */
  assign n353 = running ? n348 : n300;
  /* src/ws2811.vhdl:52:25  */
  assign n355 = i_reset ? 1'b0 : n349;
  /* src/ws2811.vhdl:52:25  */
  assign n357 = i_reset ? 5'b00000 : n350;
  /* src/ws2811.vhdl:52:25  */
  assign n359 = i_reset ? 4'b0000 : n351;
  /* src/ws2811.vhdl:52:25  */
  assign n361 = i_reset ? 1'b0 : n352;
  /* src/ws2811.vhdl:52:25  */
  assign n363 = i_reset ? 8'b00000000 : n298;
  /* src/ws2811.vhdl:52:25  */
  assign n365 = i_reset ? 1'b0 : n353;
  /* src/ws2811.vhdl:47:9  */
  assign n380 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n381 = n380 ? n357 : cyc_count;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n382 <= n381;
  /* src/ws2811.vhdl:47:9  */
  assign n383 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n384 = n383 ? n359 : bit_count;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n385 <= n384;
  /* src/ws2811.vhdl:47:9  */
  assign n386 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n387 = n386 ? n361 : bit_data_in;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n388 <= n387;
  initial
    n388 = 1'b0;
  /* src/ws2811.vhdl:47:9  */
  assign n389 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n390 = n389 ? n363 : rgb;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n391 <= n390;
  initial
    n391 = 8'b00000000;
  /* src/ws2811.vhdl:47:9  */
  assign n392 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n393 = n392 ? n365 : running;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n394 <= n393;
  initial
    n394 = 1'b0;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n395 <= 1'b0;
    else
      n395 <= n355;
  /* src/ws2811.vhdl:79:99  */
  assign n396 = rgb[n332 * 1 +: 1]; //(Bmux)
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
  wire n183;
  wire [31:0] n184;
  wire n186;
  wire [6:0] n187;
  wire [7:0] n188;
  wire [2:0] n189;
  wire [2:0] n191;
  wire [31:0] n194;
  wire [31:0] n196;
  wire [3:0] n197;
  wire [7:0] n198;
  wire n201;
  wire [3:0] n203;
  wire [7:0] n204;
  wire [7:0] n205;
  wire n206;
  wire [3:0] n207;
  wire [7:0] n208;
  wire [1:0] n210;
  wire n212;
  wire [1:0] n214;
  wire n216;
  wire [1:0] n217;
  reg [7:0] n218;
  reg n220;
  reg [3:0] n222;
  reg [7:0] n223;
  reg [1:0] n225;
  reg [3:0] n242;
  reg [7:0] n243;
  reg [1:0] n244;
  reg [7:0] n245;
  reg n246;
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
  wire n264;
  wire n265;
  wire n266;
  wire n267;
  wire n268;
  wire n269;
  wire n270;
  wire n271;
  wire n272;
  wire n273;
  wire n274;
  wire n275;
  wire n276;
  wire n277;
  wire n278;
  wire n279;
  wire n280;
  wire [7:0] n281;
  assign o_word = n245; //(module output)
  assign o_word_ready = n246; //(module output)
  /* src/spi.vhdl:28:12  */
  always @*
    bit_count = n242; // (isignal)
  initial
    bit_count = 4'b0000;
  /* src/spi.vhdl:30:12  */
  always @*
    current_word = n243; // (isignal)
  initial
    current_word = 8'b00000000;
  /* src/spi.vhdl:38:12  */
  assign state = n244; // (signal)
  /* src/spi.vhdl:70:29  */
  assign n183 = ~i_cs;
  /* src/spi.vhdl:75:38  */
  assign n184 = {28'b0, bit_count};  //  uext
  /* src/spi.vhdl:75:38  */
  assign n186 = n184 == 32'b00000000000000000000000000000111;
  /* src/spi.vhdl:76:51  */
  assign n187 = current_word[7:1]; // extract
  /* src/spi.vhdl:76:69  */
  assign n188 = {n187, i_copi};
  /* src/spi.vhdl:81:42  */
  assign n189 = bit_count[2:0];  // trunc
  /* src/spi.vhdl:81:42  */
  assign n191 = 3'b111 - n189;
  /* src/spi.vhdl:86:52  */
  assign n194 = {28'b0, bit_count};  //  uext
  /* src/spi.vhdl:86:52  */
  assign n196 = n194 + 32'b00000000000000000000000000000001;
  /* src/spi.vhdl:86:42  */
  assign n197 = n196[3:0];  // trunc
  /* src/spi.vhdl:75:25  */
  assign n198 = n186 ? n188 : n245;
  /* src/spi.vhdl:75:25  */
  assign n201 = n186 ? 1'b1 : 1'b0;
  /* src/spi.vhdl:75:25  */
  assign n203 = n186 ? 4'b0000 : n197;
  /* src/spi.vhdl:75:25  */
  assign n204 = n186 ? current_word : n281;
  /* src/spi.vhdl:70:21  */
  assign n205 = n183 ? n245 : n198;
  /* src/spi.vhdl:70:21  */
  assign n206 = n183 ? n246 : n201;
  /* src/spi.vhdl:70:21  */
  assign n207 = n183 ? bit_count : n203;
  /* src/spi.vhdl:70:21  */
  assign n208 = n183 ? current_word : n204;
  /* src/spi.vhdl:70:21  */
  assign n210 = n183 ? 2'b00 : state;
  /* src/spi.vhdl:69:17  */
  assign n212 = state == 2'b10;
  /* src/spi.vhdl:94:21  */
  assign n214 = i_cs ? 2'b10 : state;
  /* src/spi.vhdl:90:17  */
  assign n216 = state == 2'b00;
  assign n217 = {n216, n212};
  /* src/spi.vhdl:53:13  */
  always @*
    case (n217)
      2'b10: n218 = n245;
      2'b01: n218 = n205;
      default: n218 = n245;
    endcase
  /* src/spi.vhdl:53:13  */
  always @*
    case (n217)
      2'b10: n220 = 1'b0;
      2'b01: n220 = n206;
      default: n220 = n246;
    endcase
  /* src/spi.vhdl:53:13  */
  always @*
    case (n217)
      2'b10: n222 = 4'b0000;
      2'b01: n222 = n207;
      default: n222 = bit_count;
    endcase
  /* src/spi.vhdl:53:13  */
  always @*
    case (n217)
      2'b10: n223 = current_word;
      2'b01: n223 = n208;
      default: n223 = current_word;
    endcase
  /* src/spi.vhdl:53:13  */
  always @*
    case (n217)
      2'b10: n225 = n214;
      2'b01: n225 = n210;
      default: n225 = 2'b00;
    endcase
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n242 <= 4'b0000;
    else
      n242 <= n222;
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n243 <= 8'b00000000;
    else
      n243 <= n223;
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n244 <= 2'b10;
    else
      n244 <= n225;
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n245 <= 8'b00000000;
    else
      n245 <= n218;
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n246 <= 1'b0;
    else
      n246 <= n220;
  /* src/spi.vhdl:81:29  */
  assign n247 = n191[2]; // extract
  /* src/spi.vhdl:81:29  */
  assign n248 = ~n247;
  /* src/spi.vhdl:81:29  */
  assign n249 = n191[1]; // extract
  /* src/spi.vhdl:81:29  */
  assign n250 = ~n249;
  /* src/spi.vhdl:81:29  */
  assign n251 = n248 & n250;
  /* src/spi.vhdl:81:29  */
  assign n252 = n248 & n249;
  /* src/spi.vhdl:81:29  */
  assign n253 = n247 & n250;
  /* src/spi.vhdl:81:29  */
  assign n254 = n247 & n249;
  /* src/spi.vhdl:81:29  */
  assign n255 = n191[0]; // extract
  /* src/spi.vhdl:81:29  */
  assign n256 = ~n255;
  /* src/spi.vhdl:81:29  */
  assign n257 = n251 & n256;
  /* src/spi.vhdl:81:29  */
  assign n258 = n251 & n255;
  /* src/spi.vhdl:81:29  */
  assign n259 = n252 & n256;
  /* src/spi.vhdl:81:29  */
  assign n260 = n252 & n255;
  /* src/spi.vhdl:81:29  */
  assign n261 = n253 & n256;
  /* src/spi.vhdl:81:29  */
  assign n262 = n253 & n255;
  /* src/spi.vhdl:81:29  */
  assign n263 = n254 & n256;
  /* src/spi.vhdl:81:29  */
  assign n264 = n254 & n255;
  assign n265 = current_word[0]; // extract
  /* src/spi.vhdl:81:29  */
  assign n266 = n257 ? i_copi : n265;
  assign n267 = current_word[1]; // extract
  /* src/spi.vhdl:81:29  */
  assign n268 = n258 ? i_copi : n267;
  assign n269 = current_word[2]; // extract
  /* src/spi.vhdl:81:29  */
  assign n270 = n259 ? i_copi : n269;
  assign n271 = current_word[3]; // extract
  /* src/spi.vhdl:81:29  */
  assign n272 = n260 ? i_copi : n271;
  assign n273 = current_word[4]; // extract
  /* src/spi.vhdl:81:29  */
  assign n274 = n261 ? i_copi : n273;
  assign n275 = current_word[5]; // extract
  /* src/spi.vhdl:81:29  */
  assign n276 = n262 ? i_copi : n275;
  assign n277 = current_word[6]; // extract
  /* src/spi.vhdl:81:29  */
  assign n278 = n263 ? i_copi : n277;
  assign n279 = current_word[7]; // extract
  /* src/spi.vhdl:81:29  */
  assign n280 = n264 ? i_copi : n279;
  assign n281 = {n280, n278, n276, n274, n272, n270, n268, n266};
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
  wire [15:0] strip_trigger;
  reg [3:0] strip_counter;
  wire n4;
  localparam [7:0] n5 = 8'b00000000;
  wire n6;
  wire n7;
  wire \led_o_n1_led.o_data ;
  wire n10;
  wire \led_o_n2_led.o_data ;
  wire n12;
  wire \led_o_n3_led.o_data ;
  wire n14;
  wire \led_o_n4_led.o_data ;
  wire n16;
  wire \led_o_n5_led.o_data ;
  wire n18;
  wire \led_o_n6_led.o_data ;
  wire n20;
  wire \led_o_n7_led.o_data ;
  wire n22;
  wire \led_o_n8_led.o_data ;
  wire n24;
  wire \led_io_n1_led.o_data ;
  wire n26;
  wire \led_io_n2_led.o_data ;
  wire n28;
  wire \led_io_n3_led.o_data ;
  wire n30;
  wire \led_io_n4_led.o_data ;
  wire n32;
  wire \led_io_n5_led.o_data ;
  wire n34;
  wire \led_io_n6_led.o_data ;
  wire n36;
  wire \led_io_n7_led.o_data ;
  wire n38;
  wire \led_io_n8_led.o_data ;
  wire n40;
  wire [31:0] n45;
  wire n47;
  wire [31:0] n48;
  wire [31:0] n50;
  wire [3:0] n51;
  wire [3:0] n53;
  wire [31:0] n59;
  wire n61;
  wire n62;
  wire n63;
  wire [31:0] n66;
  wire n68;
  wire n69;
  wire n70;
  wire [31:0] n73;
  wire n75;
  wire n76;
  wire n77;
  wire [31:0] n80;
  wire n82;
  wire n83;
  wire n84;
  wire [31:0] n87;
  wire n89;
  wire n90;
  wire n91;
  wire [31:0] n94;
  wire n96;
  wire n97;
  wire n98;
  wire [31:0] n101;
  wire n103;
  wire n104;
  wire n105;
  wire [31:0] n108;
  wire n110;
  wire n111;
  wire n112;
  wire [31:0] n115;
  wire n117;
  wire n118;
  wire n119;
  wire [31:0] n122;
  wire n124;
  wire n125;
  wire n126;
  wire [31:0] n129;
  wire n131;
  wire n132;
  wire n133;
  wire [31:0] n136;
  wire n138;
  wire n139;
  wire n140;
  wire [31:0] n143;
  wire n145;
  wire n146;
  wire n147;
  wire [31:0] n150;
  wire n152;
  wire n153;
  wire n154;
  wire [31:0] n157;
  wire n159;
  wire n160;
  wire n161;
  wire [31:0] n164;
  wire n166;
  wire n167;
  wire n168;
  wire [15:0] n172;
  reg [3:0] n173;
  wire [7:0] n174;
  wire [7:0] n175;
  assign uio_oe = n5; //(module output)
  assign uo_out = n174; //(module output)
  assign uio_out = n175; //(module output)
  /* src/top.vhdl:19:16  */
  assign rst = n4; // (signal)
  /* src/top.vhdl:26:16  */
  assign strip_trigger = n172; // (signal)
  /* src/top.vhdl:27:16  */
  always @*
    strip_counter = n173; // (isignal)
  initial
    strip_counter = 4'b0000;
  /* src/top.vhdl:29:16  */
  assign n4 = ~rst_n;
  /* src/top.vhdl:32:9  */
  spi_8 spi_controller (
    .i_clock(clk),
    .i_reset(rst),
    .i_copi(n6),
    .i_cs(n7),
    .o_word(word),
    .o_word_ready(word_ready));
  /* src/top.vhdl:38:32  */
  assign n6 = ui_in[1]; // extract
  /* src/top.vhdl:37:30  */
  assign n7 = ui_in[0]; // extract
  /* src/top.vhdl:50:17  */
  ws2811_8 led_o_n1_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n10),
    .i_pixel_data(word),
    .o_data(\led_o_n1_led.o_data ));
  /* src/top.vhdl:55:51  */
  assign n10 = strip_trigger[0]; // extract
  /* src/top.vhdl:50:17  */
  ws2811_8 led_o_n2_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n12),
    .i_pixel_data(word),
    .o_data(\led_o_n2_led.o_data ));
  /* src/top.vhdl:55:51  */
  assign n12 = strip_trigger[1]; // extract
  /* src/top.vhdl:50:17  */
  ws2811_8 led_o_n3_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n14),
    .i_pixel_data(word),
    .o_data(\led_o_n3_led.o_data ));
  /* src/top.vhdl:55:51  */
  assign n14 = strip_trigger[2]; // extract
  /* src/top.vhdl:50:17  */
  ws2811_8 led_o_n4_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n16),
    .i_pixel_data(word),
    .o_data(\led_o_n4_led.o_data ));
  /* src/top.vhdl:55:51  */
  assign n16 = strip_trigger[3]; // extract
  /* src/top.vhdl:50:17  */
  ws2811_8 led_o_n5_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n18),
    .i_pixel_data(word),
    .o_data(\led_o_n5_led.o_data ));
  /* src/top.vhdl:55:51  */
  assign n18 = strip_trigger[4]; // extract
  /* src/top.vhdl:50:17  */
  ws2811_8 led_o_n6_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n20),
    .i_pixel_data(word),
    .o_data(\led_o_n6_led.o_data ));
  /* src/top.vhdl:55:51  */
  assign n20 = strip_trigger[5]; // extract
  /* src/top.vhdl:50:17  */
  ws2811_8 led_o_n7_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n22),
    .i_pixel_data(word),
    .o_data(\led_o_n7_led.o_data ));
  /* src/top.vhdl:55:51  */
  assign n22 = strip_trigger[6]; // extract
  /* src/top.vhdl:50:17  */
  ws2811_8 led_o_n8_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n24),
    .i_pixel_data(word),
    .o_data(\led_o_n8_led.o_data ));
  /* src/top.vhdl:55:51  */
  assign n24 = strip_trigger[7]; // extract
  /* src/top.vhdl:65:17  */
  ws2811_8 led_io_n1_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n26),
    .i_pixel_data(word),
    .o_data(\led_io_n1_led.o_data ));
  /* src/top.vhdl:70:51  */
  assign n26 = strip_trigger[8]; // extract
  /* src/top.vhdl:65:17  */
  ws2811_8 led_io_n2_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n28),
    .i_pixel_data(word),
    .o_data(\led_io_n2_led.o_data ));
  /* src/top.vhdl:70:51  */
  assign n28 = strip_trigger[9]; // extract
  /* src/top.vhdl:65:17  */
  ws2811_8 led_io_n3_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n30),
    .i_pixel_data(word),
    .o_data(\led_io_n3_led.o_data ));
  /* src/top.vhdl:70:51  */
  assign n30 = strip_trigger[10]; // extract
  /* src/top.vhdl:65:17  */
  ws2811_8 led_io_n4_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n32),
    .i_pixel_data(word),
    .o_data(\led_io_n4_led.o_data ));
  /* src/top.vhdl:70:51  */
  assign n32 = strip_trigger[11]; // extract
  /* src/top.vhdl:65:17  */
  ws2811_8 led_io_n5_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n34),
    .i_pixel_data(word),
    .o_data(\led_io_n5_led.o_data ));
  /* src/top.vhdl:70:51  */
  assign n34 = strip_trigger[12]; // extract
  /* src/top.vhdl:65:17  */
  ws2811_8 led_io_n6_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n36),
    .i_pixel_data(word),
    .o_data(\led_io_n6_led.o_data ));
  /* src/top.vhdl:70:51  */
  assign n36 = strip_trigger[13]; // extract
  /* src/top.vhdl:65:17  */
  ws2811_8 led_io_n7_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n38),
    .i_pixel_data(word),
    .o_data(\led_io_n7_led.o_data ));
  /* src/top.vhdl:70:51  */
  assign n38 = strip_trigger[14]; // extract
  /* src/top.vhdl:65:17  */
  ws2811_8 led_io_n8_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n40),
    .i_pixel_data(word),
    .o_data(\led_io_n8_led.o_data ));
  /* src/top.vhdl:70:51  */
  assign n40 = strip_trigger[15]; // extract
  /* src/top.vhdl:82:42  */
  assign n45 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:82:42  */
  assign n47 = $signed(n45) < $signed(32'b00000000000000000000000000001111);
  /* src/top.vhdl:83:64  */
  assign n48 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:83:64  */
  assign n50 = n48 + 32'b00000000000000000000000000000001;
  /* src/top.vhdl:83:50  */
  assign n51 = n50[3:0];  // trunc
  /* src/top.vhdl:82:25  */
  assign n53 = n47 ? n51 : 4'b0000;
  /* src/top.vhdl:91:82  */
  assign n59 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:91:82  */
  assign n61 = n59 == 32'b00000000000000000000000000000000;
  /* src/top.vhdl:91:64  */
  assign n62 = n61 & word_ready;
  /* src/top.vhdl:91:41  */
  assign n63 = n62 ? 1'b1 : 1'b0;
  /* src/top.vhdl:91:82  */
  assign n66 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:91:82  */
  assign n68 = n66 == 32'b00000000000000000000000000000001;
  /* src/top.vhdl:91:64  */
  assign n69 = n68 & word_ready;
  /* src/top.vhdl:91:41  */
  assign n70 = n69 ? 1'b1 : 1'b0;
  /* src/top.vhdl:91:82  */
  assign n73 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:91:82  */
  assign n75 = n73 == 32'b00000000000000000000000000000010;
  /* src/top.vhdl:91:64  */
  assign n76 = n75 & word_ready;
  /* src/top.vhdl:91:41  */
  assign n77 = n76 ? 1'b1 : 1'b0;
  /* src/top.vhdl:91:82  */
  assign n80 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:91:82  */
  assign n82 = n80 == 32'b00000000000000000000000000000011;
  /* src/top.vhdl:91:64  */
  assign n83 = n82 & word_ready;
  /* src/top.vhdl:91:41  */
  assign n84 = n83 ? 1'b1 : 1'b0;
  /* src/top.vhdl:91:82  */
  assign n87 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:91:82  */
  assign n89 = n87 == 32'b00000000000000000000000000000100;
  /* src/top.vhdl:91:64  */
  assign n90 = n89 & word_ready;
  /* src/top.vhdl:91:41  */
  assign n91 = n90 ? 1'b1 : 1'b0;
  /* src/top.vhdl:91:82  */
  assign n94 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:91:82  */
  assign n96 = n94 == 32'b00000000000000000000000000000101;
  /* src/top.vhdl:91:64  */
  assign n97 = n96 & word_ready;
  /* src/top.vhdl:91:41  */
  assign n98 = n97 ? 1'b1 : 1'b0;
  /* src/top.vhdl:91:82  */
  assign n101 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:91:82  */
  assign n103 = n101 == 32'b00000000000000000000000000000110;
  /* src/top.vhdl:91:64  */
  assign n104 = n103 & word_ready;
  /* src/top.vhdl:91:41  */
  assign n105 = n104 ? 1'b1 : 1'b0;
  /* src/top.vhdl:91:82  */
  assign n108 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:91:82  */
  assign n110 = n108 == 32'b00000000000000000000000000000111;
  /* src/top.vhdl:91:64  */
  assign n111 = n110 & word_ready;
  /* src/top.vhdl:91:41  */
  assign n112 = n111 ? 1'b1 : 1'b0;
  /* src/top.vhdl:91:82  */
  assign n115 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:91:82  */
  assign n117 = n115 == 32'b00000000000000000000000000001000;
  /* src/top.vhdl:91:64  */
  assign n118 = n117 & word_ready;
  /* src/top.vhdl:91:41  */
  assign n119 = n118 ? 1'b1 : 1'b0;
  /* src/top.vhdl:91:82  */
  assign n122 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:91:82  */
  assign n124 = n122 == 32'b00000000000000000000000000001001;
  /* src/top.vhdl:91:64  */
  assign n125 = n124 & word_ready;
  /* src/top.vhdl:91:41  */
  assign n126 = n125 ? 1'b1 : 1'b0;
  /* src/top.vhdl:91:82  */
  assign n129 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:91:82  */
  assign n131 = n129 == 32'b00000000000000000000000000001010;
  /* src/top.vhdl:91:64  */
  assign n132 = n131 & word_ready;
  /* src/top.vhdl:91:41  */
  assign n133 = n132 ? 1'b1 : 1'b0;
  /* src/top.vhdl:91:82  */
  assign n136 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:91:82  */
  assign n138 = n136 == 32'b00000000000000000000000000001011;
  /* src/top.vhdl:91:64  */
  assign n139 = n138 & word_ready;
  /* src/top.vhdl:91:41  */
  assign n140 = n139 ? 1'b1 : 1'b0;
  /* src/top.vhdl:91:82  */
  assign n143 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:91:82  */
  assign n145 = n143 == 32'b00000000000000000000000000001100;
  /* src/top.vhdl:91:64  */
  assign n146 = n145 & word_ready;
  /* src/top.vhdl:91:41  */
  assign n147 = n146 ? 1'b1 : 1'b0;
  /* src/top.vhdl:91:82  */
  assign n150 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:91:82  */
  assign n152 = n150 == 32'b00000000000000000000000000001101;
  /* src/top.vhdl:91:64  */
  assign n153 = n152 & word_ready;
  /* src/top.vhdl:91:41  */
  assign n154 = n153 ? 1'b1 : 1'b0;
  /* src/top.vhdl:91:82  */
  assign n157 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:91:82  */
  assign n159 = n157 == 32'b00000000000000000000000000001110;
  /* src/top.vhdl:91:64  */
  assign n160 = n159 & word_ready;
  /* src/top.vhdl:91:41  */
  assign n161 = n160 ? 1'b1 : 1'b0;
  /* src/top.vhdl:91:82  */
  assign n164 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:91:82  */
  assign n166 = n164 == 32'b00000000000000000000000000001111;
  /* src/top.vhdl:91:64  */
  assign n167 = n166 & word_ready;
  /* src/top.vhdl:91:41  */
  assign n168 = n167 ? 1'b1 : 1'b0;
  assign n172 = {n168, n161, n154, n147, n140, n133, n126, n119, n112, n105, n98, n91, n84, n77, n70, n63};
  /* src/top.vhdl:81:17  */
  always @(negedge word_ready or posedge rst)
    if (rst)
      n173 <= 4'b0000;
    else
      n173 <= n53;
  /* src/top.vhdl:79:17  */
  assign n174 = {\led_o_n8_led.o_data , \led_o_n7_led.o_data , \led_o_n6_led.o_data , \led_o_n5_led.o_data , \led_o_n4_led.o_data , \led_o_n3_led.o_data , \led_o_n2_led.o_data , \led_o_n1_led.o_data };
  assign n175 = {\led_io_n8_led.o_data , \led_io_n7_led.o_data , \led_io_n6_led.o_data , \led_io_n5_led.o_data , \led_io_n4_led.o_data , \led_io_n3_led.o_data , \led_io_n2_led.o_data , \led_io_n1_led.o_data };
endmodule

