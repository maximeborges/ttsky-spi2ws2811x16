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
  wire n282;
  wire n283;
  wire n284;
  wire n286;
  wire [4:0] n288;
  wire n289;
  wire [7:0] n290;
  wire n292;
  wire [31:0] n293;
  wire n295;
  wire [31:0] n296;
  wire [31:0] n298;
  wire [4:0] n299;
  wire [31:0] n300;
  wire n302;
  wire n303;
  wire n304;
  wire [31:0] n305;
  wire n307;
  wire n308;
  wire n309;
  wire n311;
  wire [31:0] n312;
  wire n314;
  wire [31:0] n315;
  wire [31:0] n317;
  wire [3:0] n318;
  wire [31:0] n319;
  wire [31:0] n321;
  wire [31:0] n323;
  wire [2:0] n324;
  wire n329;
  wire [3:0] n331;
  wire n332;
  wire n334;
  wire n335;
  wire [4:0] n337;
  wire [3:0] n338;
  wire n339;
  wire n340;
  wire n341;
  wire [4:0] n342;
  wire [3:0] n343;
  wire n344;
  wire n345;
  wire n347;
  wire [4:0] n349;
  wire [3:0] n351;
  wire n353;
  wire [7:0] n355;
  wire n357;
  wire n372;
  wire [4:0] n373;
  reg [4:0] n374;
  wire n375;
  wire [3:0] n376;
  reg [3:0] n377;
  wire n378;
  wire n379;
  reg n380;
  wire n381;
  wire [7:0] n382;
  reg [7:0] n383;
  wire n384;
  wire n385;
  reg n386;
  reg n387;
  wire n388;
  assign o_data = n387; //(module output)
  /* src/ws2811.vhdl:26:16  */
  assign cyc_count = n374; // (signal)
  /* src/ws2811.vhdl:27:16  */
  assign bit_count = n377; // (signal)
  /* src/ws2811.vhdl:28:16  */
  always @*
    bit_data_in = n380; // (isignal)
  initial
    bit_data_in = 1'b0;
  /* src/ws2811.vhdl:30:16  */
  always @*
    rgb = n383; // (isignal)
  initial
    rgb = 8'b00000000;
  /* src/ws2811.vhdl:32:16  */
  always @*
    running = n386; // (isignal)
  initial
    running = 1'b0;
  /* src/ws2811.vhdl:61:44  */
  assign n282 = ~running;
  /* src/ws2811.vhdl:61:50  */
  assign n283 = i_trigger & n282;
  /* src/ws2811.vhdl:64:68  */
  assign n284 = i_pixel_data[7]; // extract
  /* src/ws2811.vhdl:61:33  */
  assign n286 = n283 ? 1'b1 : n387;
  /* src/ws2811.vhdl:61:33  */
  assign n288 = n283 ? 5'b00001 : cyc_count;
  /* src/ws2811.vhdl:61:33  */
  assign n289 = n283 ? n284 : bit_data_in;
  /* src/ws2811.vhdl:61:33  */
  assign n290 = n283 ? i_pixel_data : rgb;
  /* src/ws2811.vhdl:61:33  */
  assign n292 = n283 ? 1'b1 : running;
  /* src/ws2811.vhdl:70:54  */
  assign n293 = {27'b0, cyc_count};  //  uext
  /* src/ws2811.vhdl:70:54  */
  assign n295 = $signed(n293) < $signed(32'b00000000000000000000000000001111);
  /* src/ws2811.vhdl:71:72  */
  assign n296 = {27'b0, cyc_count};  //  uext
  /* src/ws2811.vhdl:71:72  */
  assign n298 = n296 + 32'b00000000000000000000000000000001;
  /* src/ws2811.vhdl:71:62  */
  assign n299 = n298[4:0];  // trunc
  /* src/ws2811.vhdl:72:85  */
  assign n300 = {27'b0, cyc_count};  //  uext
  /* src/ws2811.vhdl:72:85  */
  assign n302 = n300 == 32'b00000000000000000000000000001010;
  /* src/ws2811.vhdl:72:71  */
  assign n303 = n302 & bit_data_in;
  /* src/ws2811.vhdl:72:113  */
  assign n304 = ~bit_data_in;
  /* src/ws2811.vhdl:72:133  */
  assign n305 = {27'b0, cyc_count};  //  uext
  /* src/ws2811.vhdl:72:133  */
  assign n307 = n305 == 32'b00000000000000000000000000000110;
  /* src/ws2811.vhdl:72:119  */
  assign n308 = n307 & n304;
  /* src/ws2811.vhdl:72:97  */
  assign n309 = n303 | n308;
  /* src/ws2811.vhdl:72:49  */
  assign n311 = n309 ? 1'b0 : n286;
  /* src/ws2811.vhdl:77:62  */
  assign n312 = {28'b0, bit_count};  //  uext
  /* src/ws2811.vhdl:77:62  */
  assign n314 = $signed(n312) < $signed(32'b00000000000000000000000000000111);
  /* src/ws2811.vhdl:78:80  */
  assign n315 = {28'b0, bit_count};  //  uext
  /* src/ws2811.vhdl:78:80  */
  assign n317 = n315 + 32'b00000000000000000000000000000001;
  /* src/ws2811.vhdl:78:70  */
  assign n318 = n317[3:0];  // trunc
  /* src/ws2811.vhdl:79:87  */
  assign n319 = {28'b0, bit_count};  //  uext
  /* src/ws2811.vhdl:79:87  */
  assign n321 = 32'b00000000000000000000000000000111 - n319;
  /* src/ws2811.vhdl:79:99  */
  assign n323 = n321 - 32'b00000000000000000000000000000001;
  /* src/ws2811.vhdl:79:99  */
  assign n324 = n323[2:0];  // trunc
  /* src/ws2811.vhdl:77:49  */
  assign n329 = n314 ? 1'b1 : 1'b0;
  /* src/ws2811.vhdl:77:49  */
  assign n331 = n314 ? n318 : 4'b0000;
  /* src/ws2811.vhdl:77:49  */
  assign n332 = n314 ? n388 : n289;
  /* src/ws2811.vhdl:77:49  */
  assign n334 = n314 ? n292 : 1'b0;
  /* src/ws2811.vhdl:70:41  */
  assign n335 = n295 ? n311 : n329;
  /* src/ws2811.vhdl:70:41  */
  assign n337 = n295 ? n299 : 5'b00000;
  /* src/ws2811.vhdl:70:41  */
  assign n338 = n295 ? bit_count : n331;
  /* src/ws2811.vhdl:70:41  */
  assign n339 = n295 ? n289 : n332;
  /* src/ws2811.vhdl:70:41  */
  assign n340 = n295 ? n292 : n334;
  /* src/ws2811.vhdl:69:33  */
  assign n341 = running ? n335 : n286;
  /* src/ws2811.vhdl:69:33  */
  assign n342 = running ? n337 : n288;
  /* src/ws2811.vhdl:69:33  */
  assign n343 = running ? n338 : bit_count;
  /* src/ws2811.vhdl:69:33  */
  assign n344 = running ? n339 : n289;
  /* src/ws2811.vhdl:69:33  */
  assign n345 = running ? n340 : n292;
  /* src/ws2811.vhdl:52:25  */
  assign n347 = i_reset ? 1'b0 : n341;
  /* src/ws2811.vhdl:52:25  */
  assign n349 = i_reset ? 5'b00000 : n342;
  /* src/ws2811.vhdl:52:25  */
  assign n351 = i_reset ? 4'b0000 : n343;
  /* src/ws2811.vhdl:52:25  */
  assign n353 = i_reset ? 1'b0 : n344;
  /* src/ws2811.vhdl:52:25  */
  assign n355 = i_reset ? 8'b00000000 : n290;
  /* src/ws2811.vhdl:52:25  */
  assign n357 = i_reset ? 1'b0 : n345;
  /* src/ws2811.vhdl:47:9  */
  assign n372 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n373 = n372 ? n349 : cyc_count;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n374 <= n373;
  /* src/ws2811.vhdl:47:9  */
  assign n375 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n376 = n375 ? n351 : bit_count;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n377 <= n376;
  /* src/ws2811.vhdl:47:9  */
  assign n378 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n379 = n378 ? n353 : bit_data_in;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n380 <= n379;
  initial
    n380 = 1'b0;
  /* src/ws2811.vhdl:47:9  */
  assign n381 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n382 = n381 ? n355 : rgb;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n383 <= n382;
  initial
    n383 = 8'b00000000;
  /* src/ws2811.vhdl:47:9  */
  assign n384 = ~i_reset;
  /* src/ws2811.vhdl:51:17  */
  assign n385 = n384 ? n357 : running;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n386 <= n385;
  initial
    n386 = 1'b0;
  /* src/ws2811.vhdl:51:17  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n387 <= 1'b0;
    else
      n387 <= n347;
  /* src/ws2811.vhdl:79:99  */
  assign n388 = rgb[n324 * 1 +: 1]; //(Bmux)
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
  wire n175;
  wire [31:0] n176;
  wire n178;
  wire [6:0] n179;
  wire [7:0] n180;
  wire [2:0] n181;
  wire [2:0] n183;
  wire [31:0] n186;
  wire [31:0] n188;
  wire [3:0] n189;
  wire [7:0] n190;
  wire n193;
  wire [3:0] n195;
  wire [7:0] n196;
  wire [7:0] n197;
  wire n198;
  wire [3:0] n199;
  wire [7:0] n200;
  wire [1:0] n202;
  wire n204;
  wire [1:0] n206;
  wire n208;
  wire [1:0] n209;
  reg [7:0] n210;
  reg n212;
  reg [3:0] n214;
  reg [7:0] n215;
  reg [1:0] n217;
  reg [3:0] n234;
  reg [7:0] n235;
  reg [1:0] n236;
  reg [7:0] n237;
  reg n238;
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
  wire n264;
  wire n265;
  wire n266;
  wire n267;
  wire n268;
  wire n269;
  wire n270;
  wire n271;
  wire n272;
  wire [7:0] n273;
  assign o_word = n237; //(module output)
  assign o_word_ready = n238; //(module output)
  /* src/spi.vhdl:28:12  */
  always @*
    bit_count = n234; // (isignal)
  initial
    bit_count = 4'b0000;
  /* src/spi.vhdl:30:12  */
  always @*
    current_word = n235; // (isignal)
  initial
    current_word = 8'b00000000;
  /* src/spi.vhdl:38:12  */
  assign state = n236; // (signal)
  /* src/spi.vhdl:70:29  */
  assign n175 = ~i_cs;
  /* src/spi.vhdl:75:38  */
  assign n176 = {28'b0, bit_count};  //  uext
  /* src/spi.vhdl:75:38  */
  assign n178 = n176 == 32'b00000000000000000000000000000111;
  /* src/spi.vhdl:76:51  */
  assign n179 = current_word[7:1]; // extract
  /* src/spi.vhdl:76:69  */
  assign n180 = {n179, i_copi};
  /* src/spi.vhdl:81:42  */
  assign n181 = bit_count[2:0];  // trunc
  /* src/spi.vhdl:81:42  */
  assign n183 = 3'b111 - n181;
  /* src/spi.vhdl:86:52  */
  assign n186 = {28'b0, bit_count};  //  uext
  /* src/spi.vhdl:86:52  */
  assign n188 = n186 + 32'b00000000000000000000000000000001;
  /* src/spi.vhdl:86:42  */
  assign n189 = n188[3:0];  // trunc
  /* src/spi.vhdl:75:25  */
  assign n190 = n178 ? n180 : n237;
  /* src/spi.vhdl:75:25  */
  assign n193 = n178 ? 1'b1 : 1'b0;
  /* src/spi.vhdl:75:25  */
  assign n195 = n178 ? 4'b0000 : n189;
  /* src/spi.vhdl:75:25  */
  assign n196 = n178 ? current_word : n273;
  /* src/spi.vhdl:70:21  */
  assign n197 = n175 ? n237 : n190;
  /* src/spi.vhdl:70:21  */
  assign n198 = n175 ? n238 : n193;
  /* src/spi.vhdl:70:21  */
  assign n199 = n175 ? bit_count : n195;
  /* src/spi.vhdl:70:21  */
  assign n200 = n175 ? current_word : n196;
  /* src/spi.vhdl:70:21  */
  assign n202 = n175 ? 2'b00 : state;
  /* src/spi.vhdl:69:17  */
  assign n204 = state == 2'b10;
  /* src/spi.vhdl:94:21  */
  assign n206 = i_cs ? 2'b10 : state;
  /* src/spi.vhdl:90:17  */
  assign n208 = state == 2'b00;
  assign n209 = {n208, n204};
  /* src/spi.vhdl:53:13  */
  always @*
    case (n209)
      2'b10: n210 = n237;
      2'b01: n210 = n197;
      default: n210 = n237;
    endcase
  /* src/spi.vhdl:53:13  */
  always @*
    case (n209)
      2'b10: n212 = 1'b0;
      2'b01: n212 = n198;
      default: n212 = n238;
    endcase
  /* src/spi.vhdl:53:13  */
  always @*
    case (n209)
      2'b10: n214 = 4'b0000;
      2'b01: n214 = n199;
      default: n214 = bit_count;
    endcase
  /* src/spi.vhdl:53:13  */
  always @*
    case (n209)
      2'b10: n215 = current_word;
      2'b01: n215 = n200;
      default: n215 = current_word;
    endcase
  /* src/spi.vhdl:53:13  */
  always @*
    case (n209)
      2'b10: n217 = n206;
      2'b01: n217 = n202;
      default: n217 = 2'b00;
    endcase
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n234 <= 4'b0000;
    else
      n234 <= n214;
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n235 <= 8'b00000000;
    else
      n235 <= n215;
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n236 <= 2'b10;
    else
      n236 <= n217;
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n237 <= 8'b00000000;
    else
      n237 <= n210;
  /* src/spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n238 <= 1'b0;
    else
      n238 <= n212;
  /* src/spi.vhdl:81:29  */
  assign n239 = n183[2]; // extract
  /* src/spi.vhdl:81:29  */
  assign n240 = ~n239;
  /* src/spi.vhdl:81:29  */
  assign n241 = n183[1]; // extract
  /* src/spi.vhdl:81:29  */
  assign n242 = ~n241;
  /* src/spi.vhdl:81:29  */
  assign n243 = n240 & n242;
  /* src/spi.vhdl:81:29  */
  assign n244 = n240 & n241;
  /* src/spi.vhdl:81:29  */
  assign n245 = n239 & n242;
  /* src/spi.vhdl:81:29  */
  assign n246 = n239 & n241;
  /* src/spi.vhdl:81:29  */
  assign n247 = n183[0]; // extract
  /* src/spi.vhdl:81:29  */
  assign n248 = ~n247;
  /* src/spi.vhdl:81:29  */
  assign n249 = n243 & n248;
  /* src/spi.vhdl:81:29  */
  assign n250 = n243 & n247;
  /* src/spi.vhdl:81:29  */
  assign n251 = n244 & n248;
  /* src/spi.vhdl:81:29  */
  assign n252 = n244 & n247;
  /* src/spi.vhdl:81:29  */
  assign n253 = n245 & n248;
  /* src/spi.vhdl:81:29  */
  assign n254 = n245 & n247;
  /* src/spi.vhdl:81:29  */
  assign n255 = n246 & n248;
  /* src/spi.vhdl:81:29  */
  assign n256 = n246 & n247;
  assign n257 = current_word[0]; // extract
  /* src/spi.vhdl:81:29  */
  assign n258 = n249 ? i_copi : n257;
  assign n259 = current_word[1]; // extract
  /* src/spi.vhdl:81:29  */
  assign n260 = n250 ? i_copi : n259;
  assign n261 = current_word[2]; // extract
  /* src/spi.vhdl:81:29  */
  assign n262 = n251 ? i_copi : n261;
  assign n263 = current_word[3]; // extract
  /* src/spi.vhdl:81:29  */
  assign n264 = n252 ? i_copi : n263;
  assign n265 = current_word[4]; // extract
  /* src/spi.vhdl:81:29  */
  assign n266 = n253 ? i_copi : n265;
  assign n267 = current_word[5]; // extract
  /* src/spi.vhdl:81:29  */
  assign n268 = n254 ? i_copi : n267;
  assign n269 = current_word[6]; // extract
  /* src/spi.vhdl:81:29  */
  assign n270 = n255 ? i_copi : n269;
  assign n271 = current_word[7]; // extract
  /* src/spi.vhdl:81:29  */
  assign n272 = n256 ? i_copi : n271;
  assign n273 = {n272, n270, n268, n266, n264, n262, n260, n258};
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
  wire [14:0] strip_trigger;
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
  wire \led_io_n7_led.o_data ;
  wire n39;
  wire [31:0] n44;
  wire n46;
  wire [31:0] n47;
  wire [31:0] n49;
  wire [3:0] n50;
  wire [3:0] n52;
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
  wire [31:0] n100;
  wire n102;
  wire n103;
  wire n104;
  wire [31:0] n107;
  wire n109;
  wire n110;
  wire n111;
  wire [31:0] n114;
  wire n116;
  wire n117;
  wire n118;
  wire [31:0] n121;
  wire n123;
  wire n124;
  wire n125;
  wire [31:0] n128;
  wire n130;
  wire n131;
  wire n132;
  wire [31:0] n135;
  wire n137;
  wire n138;
  wire n139;
  wire [31:0] n142;
  wire n144;
  wire n145;
  wire n146;
  wire [31:0] n149;
  wire n151;
  wire n152;
  wire n153;
  wire [31:0] n156;
  wire n158;
  wire n159;
  wire n160;
  wire [14:0] n164;
  reg [3:0] n165;
  wire [7:0] n166;
  wire [7:0] n167;
  assign uio_oe = n5; //(module output)
  assign uo_out = n166; //(module output)
  assign uio_out = n167; //(module output)
  /* src/top.vhdl:21:16  */
  assign rst = n4; // (signal)
  /* src/top.vhdl:28:16  */
  assign strip_trigger = n164; // (signal)
  /* src/top.vhdl:29:16  */
  always @*
    strip_counter = n165; // (isignal)
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
  /* src/top.vhdl:68:17  */
  ws2811_8 led_io_n7_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n39),
    .i_pixel_data(word),
    .o_data(\led_io_n7_led.o_data ));
  /* src/top.vhdl:73:51  */
  assign n39 = strip_trigger[14]; // extract
  /* src/top.vhdl:85:42  */
  assign n44 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:85:42  */
  assign n46 = $signed(n44) < $signed(32'b00000000000000000000000000001111);
  /* src/top.vhdl:86:64  */
  assign n47 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:86:64  */
  assign n49 = n47 + 32'b00000000000000000000000000000001;
  /* src/top.vhdl:86:50  */
  assign n50 = n49[3:0];  // trunc
  /* src/top.vhdl:85:25  */
  assign n52 = n46 ? n50 : 4'b0000;
  /* src/top.vhdl:94:82  */
  assign n58 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n60 = n58 == 32'b00000000000000000000000000000000;
  /* src/top.vhdl:94:64  */
  assign n61 = n60 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n62 = n61 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n65 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n67 = n65 == 32'b00000000000000000000000000000001;
  /* src/top.vhdl:94:64  */
  assign n68 = n67 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n69 = n68 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n72 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n74 = n72 == 32'b00000000000000000000000000000010;
  /* src/top.vhdl:94:64  */
  assign n75 = n74 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n76 = n75 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n79 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n81 = n79 == 32'b00000000000000000000000000000011;
  /* src/top.vhdl:94:64  */
  assign n82 = n81 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n83 = n82 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n86 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n88 = n86 == 32'b00000000000000000000000000000100;
  /* src/top.vhdl:94:64  */
  assign n89 = n88 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n90 = n89 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n93 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n95 = n93 == 32'b00000000000000000000000000000101;
  /* src/top.vhdl:94:64  */
  assign n96 = n95 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n97 = n96 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n100 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n102 = n100 == 32'b00000000000000000000000000000110;
  /* src/top.vhdl:94:64  */
  assign n103 = n102 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n104 = n103 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n107 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n109 = n107 == 32'b00000000000000000000000000000111;
  /* src/top.vhdl:94:64  */
  assign n110 = n109 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n111 = n110 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n114 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n116 = n114 == 32'b00000000000000000000000000001000;
  /* src/top.vhdl:94:64  */
  assign n117 = n116 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n118 = n117 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n121 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n123 = n121 == 32'b00000000000000000000000000001001;
  /* src/top.vhdl:94:64  */
  assign n124 = n123 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n125 = n124 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n128 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n130 = n128 == 32'b00000000000000000000000000001010;
  /* src/top.vhdl:94:64  */
  assign n131 = n130 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n132 = n131 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n135 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n137 = n135 == 32'b00000000000000000000000000001011;
  /* src/top.vhdl:94:64  */
  assign n138 = n137 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n139 = n138 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n142 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n144 = n142 == 32'b00000000000000000000000000001100;
  /* src/top.vhdl:94:64  */
  assign n145 = n144 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n146 = n145 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n149 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n151 = n149 == 32'b00000000000000000000000000001101;
  /* src/top.vhdl:94:64  */
  assign n152 = n151 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n153 = n152 ? 1'b1 : 1'b0;
  /* src/top.vhdl:94:82  */
  assign n156 = {28'b0, strip_counter};  //  uext
  /* src/top.vhdl:94:82  */
  assign n158 = n156 == 32'b00000000000000000000000000001110;
  /* src/top.vhdl:94:64  */
  assign n159 = n158 & word_ready;
  /* src/top.vhdl:94:41  */
  assign n160 = n159 ? 1'b1 : 1'b0;
  assign n164 = {n160, n153, n146, n139, n132, n125, n118, n111, n104, n97, n90, n83, n76, n69, n62};
  /* src/top.vhdl:84:17  */
  always @(negedge word_ready or posedge rst)
    if (rst)
      n165 <= 4'b0000;
    else
      n165 <= n52;
  /* src/top.vhdl:82:17  */
  assign n166 = {\led_o_n8_led.o_data , \led_o_n7_led.o_data , \led_o_n6_led.o_data , \led_o_n5_led.o_data , \led_o_n4_led.o_data , \led_o_n3_led.o_data , \led_o_n2_led.o_data , \led_o_n1_led.o_data };
  assign n167 = {1'b0, \led_io_n7_led.o_data , \led_io_n6_led.o_data , \led_io_n5_led.o_data , \led_io_n4_led.o_data , \led_io_n3_led.o_data , \led_io_n2_led.o_data , \led_io_n1_led.o_data };
endmodule

