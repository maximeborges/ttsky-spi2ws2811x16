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
  wire n370;
  wire n371;
  wire n372;
  wire n374;
  wire [4:0] n376;
  wire n377;
  wire [7:0] n378;
  wire n380;
  wire [31:0] n381;
  wire n383;
  wire [31:0] n384;
  wire [31:0] n386;
  wire [4:0] n387;
  wire [31:0] n388;
  wire n390;
  wire n391;
  wire n392;
  wire [31:0] n393;
  wire n395;
  wire n396;
  wire n397;
  wire n399;
  wire [31:0] n400;
  wire n402;
  wire [31:0] n403;
  wire [31:0] n405;
  wire [3:0] n406;
  wire [31:0] n407;
  wire [31:0] n409;
  wire [31:0] n411;
  wire [2:0] n412;
  wire n417;
  wire [3:0] n419;
  wire n420;
  wire n422;
  wire n423;
  wire [4:0] n425;
  wire [3:0] n426;
  wire n427;
  wire n428;
  wire n429;
  wire [4:0] n430;
  wire [3:0] n431;
  wire n432;
  wire n433;
  wire n435;
  wire [4:0] n437;
  wire [3:0] n439;
  wire n441;
  wire [7:0] n443;
  wire n445;
  wire n460;
  wire [4:0] n461;
  reg [4:0] n462;
  wire n463;
  wire [3:0] n464;
  reg [3:0] n465;
  wire n466;
  wire n467;
  reg n468;
  wire n469;
  wire [7:0] n470;
  reg [7:0] n471;
  wire n472;
  wire n473;
  reg n474;
  reg n475;
  wire n476;
  assign o_data = n475; //(module output)
  /* ws2811.vhdl:26:16  */
  assign cyc_count = n462; // (signal)
  /* ws2811.vhdl:27:16  */
  assign bit_count = n465; // (signal)
  /* ws2811.vhdl:28:16  */
  always @*
    bit_data_in = n468; // (isignal)
  initial
    bit_data_in = 1'b0;
  /* ws2811.vhdl:30:16  */
  always @*
    rgb = n471; // (isignal)
  initial
    rgb = 8'b00000000;
  /* ws2811.vhdl:32:16  */
  always @*
    running = n474; // (isignal)
  initial
    running = 1'b0;
  /* ws2811.vhdl:61:44  */
  assign n370 = ~running;
  /* ws2811.vhdl:61:50  */
  assign n371 = i_trigger & n370;
  /* ws2811.vhdl:64:68  */
  assign n372 = i_pixel_data[7]; // extract
  /* ws2811.vhdl:61:33  */
  assign n374 = n371 ? 1'b1 : n475;
  /* ws2811.vhdl:61:33  */
  assign n376 = n371 ? 5'b00001 : cyc_count;
  /* ws2811.vhdl:61:33  */
  assign n377 = n371 ? n372 : bit_data_in;
  /* ws2811.vhdl:61:33  */
  assign n378 = n371 ? i_pixel_data : rgb;
  /* ws2811.vhdl:61:33  */
  assign n380 = n371 ? 1'b1 : running;
  /* ws2811.vhdl:70:54  */
  assign n381 = {27'b0, cyc_count};  //  uext
  /* ws2811.vhdl:70:54  */
  assign n383 = $signed(n381) < $signed(32'b00000000000000000000000000001111);
  /* ws2811.vhdl:71:72  */
  assign n384 = {27'b0, cyc_count};  //  uext
  /* ws2811.vhdl:71:72  */
  assign n386 = n384 + 32'b00000000000000000000000000000001;
  /* ws2811.vhdl:71:62  */
  assign n387 = n386[4:0];  // trunc
  /* ws2811.vhdl:72:85  */
  assign n388 = {27'b0, cyc_count};  //  uext
  /* ws2811.vhdl:72:85  */
  assign n390 = n388 == 32'b00000000000000000000000000001010;
  /* ws2811.vhdl:72:71  */
  assign n391 = n390 & bit_data_in;
  /* ws2811.vhdl:72:113  */
  assign n392 = ~bit_data_in;
  /* ws2811.vhdl:72:133  */
  assign n393 = {27'b0, cyc_count};  //  uext
  /* ws2811.vhdl:72:133  */
  assign n395 = n393 == 32'b00000000000000000000000000000110;
  /* ws2811.vhdl:72:119  */
  assign n396 = n395 & n392;
  /* ws2811.vhdl:72:97  */
  assign n397 = n391 | n396;
  /* ws2811.vhdl:72:49  */
  assign n399 = n397 ? 1'b0 : n374;
  /* ws2811.vhdl:77:62  */
  assign n400 = {28'b0, bit_count};  //  uext
  /* ws2811.vhdl:77:62  */
  assign n402 = $signed(n400) < $signed(32'b00000000000000000000000000000111);
  /* ws2811.vhdl:78:80  */
  assign n403 = {28'b0, bit_count};  //  uext
  /* ws2811.vhdl:78:80  */
  assign n405 = n403 + 32'b00000000000000000000000000000001;
  /* ws2811.vhdl:78:70  */
  assign n406 = n405[3:0];  // trunc
  /* ws2811.vhdl:79:87  */
  assign n407 = {28'b0, bit_count};  //  uext
  /* ws2811.vhdl:79:87  */
  assign n409 = 32'b00000000000000000000000000000111 - n407;
  /* ws2811.vhdl:79:99  */
  assign n411 = n409 - 32'b00000000000000000000000000000001;
  /* ws2811.vhdl:79:99  */
  assign n412 = n411[2:0];  // trunc
  /* ws2811.vhdl:77:49  */
  assign n417 = n402 ? 1'b1 : 1'b0;
  /* ws2811.vhdl:77:49  */
  assign n419 = n402 ? n406 : 4'b0000;
  /* ws2811.vhdl:77:49  */
  assign n420 = n402 ? n476 : n377;
  /* ws2811.vhdl:77:49  */
  assign n422 = n402 ? n380 : 1'b0;
  /* ws2811.vhdl:70:41  */
  assign n423 = n383 ? n399 : n417;
  /* ws2811.vhdl:70:41  */
  assign n425 = n383 ? n387 : 5'b00000;
  /* ws2811.vhdl:70:41  */
  assign n426 = n383 ? bit_count : n419;
  /* ws2811.vhdl:70:41  */
  assign n427 = n383 ? n377 : n420;
  /* ws2811.vhdl:70:41  */
  assign n428 = n383 ? n380 : n422;
  /* ws2811.vhdl:69:33  */
  assign n429 = running ? n423 : n374;
  /* ws2811.vhdl:69:33  */
  assign n430 = running ? n425 : n376;
  /* ws2811.vhdl:69:33  */
  assign n431 = running ? n426 : bit_count;
  /* ws2811.vhdl:69:33  */
  assign n432 = running ? n427 : n377;
  /* ws2811.vhdl:69:33  */
  assign n433 = running ? n428 : n380;
  /* ws2811.vhdl:52:25  */
  assign n435 = i_reset ? 1'b0 : n429;
  /* ws2811.vhdl:52:25  */
  assign n437 = i_reset ? 5'b00000 : n430;
  /* ws2811.vhdl:52:25  */
  assign n439 = i_reset ? 4'b0000 : n431;
  /* ws2811.vhdl:52:25  */
  assign n441 = i_reset ? 1'b0 : n432;
  /* ws2811.vhdl:52:25  */
  assign n443 = i_reset ? 8'b00000000 : n378;
  /* ws2811.vhdl:52:25  */
  assign n445 = i_reset ? 1'b0 : n433;
  /* ws2811.vhdl:47:9  */
  assign n460 = ~i_reset;
  /* ws2811.vhdl:51:17  */
  assign n461 = n460 ? n437 : cyc_count;
  /* ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n462 <= n461;
  /* ws2811.vhdl:47:9  */
  assign n463 = ~i_reset;
  /* ws2811.vhdl:51:17  */
  assign n464 = n463 ? n439 : bit_count;
  /* ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n465 <= n464;
  /* ws2811.vhdl:47:9  */
  assign n466 = ~i_reset;
  /* ws2811.vhdl:51:17  */
  assign n467 = n466 ? n441 : bit_data_in;
  /* ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n468 <= n467;
  initial
    n468 = 1'b0;
  /* ws2811.vhdl:47:9  */
  assign n469 = ~i_reset;
  /* ws2811.vhdl:51:17  */
  assign n470 = n469 ? n443 : rgb;
  /* ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n471 <= n470;
  initial
    n471 = 8'b00000000;
  /* ws2811.vhdl:47:9  */
  assign n472 = ~i_reset;
  /* ws2811.vhdl:51:17  */
  assign n473 = n472 ? n445 : running;
  /* ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n474 <= n473;
  initial
    n474 = 1'b0;
  /* ws2811.vhdl:51:17  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n475 <= 1'b0;
    else
      n475 <= n435;
  /* ws2811.vhdl:79:99  */
  assign n476 = rgb[n412 * 1 +: 1]; //(Bmux)
endmodule

module spi_8
  (input  i_clock,
   input  i_reset,
   input  i_copi,
   input  i_cs,
   output [7:0] o_command,
   output o_command_ready,
   output [7:0] o_word,
   output o_word_ready);
  reg [3:0] bit_count;
  reg [7:0] current_command;
  reg [7:0] current_word;
  wire [1:0] state;
  wire n184;
  wire [2:0] n185;
  wire [31:0] n188;
  wire n190;
  wire [31:0] n191;
  wire [31:0] n193;
  wire [3:0] n194;
  wire [7:0] n195;
  wire n197;
  wire [3:0] n199;
  wire [1:0] n201;
  wire [7:0] n202;
  wire n203;
  wire [3:0] n204;
  wire [7:0] n205;
  wire [1:0] n207;
  wire n209;
  wire n210;
  wire [31:0] n211;
  wire n213;
  wire [6:0] n214;
  wire [7:0] n215;
  wire [2:0] n216;
  wire [2:0] n218;
  wire [31:0] n221;
  wire [31:0] n223;
  wire [3:0] n224;
  wire [7:0] n225;
  wire n228;
  wire [3:0] n230;
  wire [7:0] n231;
  wire n233;
  wire [7:0] n234;
  wire n235;
  wire [3:0] n236;
  wire [7:0] n237;
  wire [1:0] n239;
  wire n241;
  wire [1:0] n243;
  wire n245;
  wire [2:0] n246;
  reg [7:0] n247;
  reg n249;
  reg [7:0] n250;
  reg n252;
  reg [3:0] n254;
  reg [7:0] n255;
  reg [7:0] n256;
  reg [1:0] n258;
  reg [3:0] n284;
  reg [7:0] n285;
  reg [7:0] n286;
  reg [1:0] n287;
  reg [7:0] n288;
  reg n289;
  reg [7:0] n290;
  reg n291;
  wire n292;
  wire n293;
  wire n294;
  wire n295;
  wire n296;
  wire n297;
  wire n298;
  wire n299;
  wire n300;
  wire n301;
  wire n302;
  wire n303;
  wire n304;
  wire n305;
  wire n306;
  wire n307;
  wire n308;
  wire n309;
  wire n310;
  wire n311;
  wire n312;
  wire n313;
  wire n314;
  wire n315;
  wire n316;
  wire n317;
  wire n318;
  wire n319;
  wire n320;
  wire n321;
  wire n322;
  wire n323;
  wire n324;
  wire n325;
  wire [7:0] n326;
  wire n327;
  wire n328;
  wire n329;
  wire n330;
  wire n331;
  wire n332;
  wire n333;
  wire n334;
  wire n335;
  wire n336;
  wire n337;
  wire n338;
  wire n339;
  wire n340;
  wire n341;
  wire n342;
  wire n343;
  wire n344;
  wire n345;
  wire n346;
  wire n347;
  wire n348;
  wire n349;
  wire n350;
  wire n351;
  wire n352;
  wire n353;
  wire n354;
  wire n355;
  wire n356;
  wire n357;
  wire n358;
  wire n359;
  wire n360;
  wire [7:0] n361;
  assign o_command = n288; //(module output)
  assign o_command_ready = n289; //(module output)
  assign o_word = n290; //(module output)
  assign o_word_ready = n291; //(module output)
  /* spi.vhdl:28:12  */
  always @*
    bit_count = n284; // (isignal)
  initial
    bit_count = 4'b0000;
  /* spi.vhdl:29:12  */
  always @*
    current_command = n285; // (isignal)
  initial
    current_command = 8'b00000000;
  /* spi.vhdl:30:12  */
  always @*
    current_word = n286; // (isignal)
  initial
    current_word = 8'b00000000;
  /* spi.vhdl:38:12  */
  assign state = n287; // (signal)
  /* spi.vhdl:55:29  */
  assign n184 = ~i_cs;
  /* spi.vhdl:58:41  */
  assign n185 = bit_count[2:0];  // trunc
  /* spi.vhdl:59:38  */
  assign n188 = {28'b0, bit_count};  //  uext
  /* spi.vhdl:59:38  */
  assign n190 = n188 == 32'b00000000000000000000000000000111;
  /* spi.vhdl:65:52  */
  assign n191 = {28'b0, bit_count};  //  uext
  /* spi.vhdl:65:52  */
  assign n193 = n191 + 32'b00000000000000000000000000000001;
  /* spi.vhdl:65:42  */
  assign n194 = n193[3:0];  // trunc
  /* spi.vhdl:59:25  */
  assign n195 = n190 ? current_command : n288;
  /* spi.vhdl:59:25  */
  assign n197 = n190 ? 1'b1 : n289;
  /* spi.vhdl:59:25  */
  assign n199 = n190 ? 4'b0000 : n194;
  /* spi.vhdl:59:25  */
  assign n201 = n190 ? 2'b10 : state;
  /* spi.vhdl:55:21  */
  assign n202 = n184 ? n288 : n195;
  /* spi.vhdl:55:21  */
  assign n203 = n184 ? n289 : n197;
  /* spi.vhdl:55:21  */
  assign n204 = n184 ? bit_count : n199;
  /* spi.vhdl:55:21  */
  assign n205 = n184 ? current_command : n326;
  /* spi.vhdl:55:21  */
  assign n207 = n184 ? 2'b00 : n201;
  /* spi.vhdl:54:17  */
  assign n209 = state == 2'b01;
  /* spi.vhdl:70:29  */
  assign n210 = ~i_cs;
  /* spi.vhdl:75:38  */
  assign n211 = {28'b0, bit_count};  //  uext
  /* spi.vhdl:75:38  */
  assign n213 = n211 == 32'b00000000000000000000000000000111;
  /* spi.vhdl:76:51  */
  assign n214 = current_word[7:1]; // extract
  /* spi.vhdl:76:69  */
  assign n215 = {n214, i_copi};
  /* spi.vhdl:81:42  */
  assign n216 = bit_count[2:0];  // trunc
  /* spi.vhdl:81:42  */
  assign n218 = 3'b111 - n216;
  /* spi.vhdl:86:52  */
  assign n221 = {28'b0, bit_count};  //  uext
  /* spi.vhdl:86:52  */
  assign n223 = n221 + 32'b00000000000000000000000000000001;
  /* spi.vhdl:86:42  */
  assign n224 = n223[3:0];  // trunc
  /* spi.vhdl:75:25  */
  assign n225 = n213 ? n215 : n290;
  /* spi.vhdl:75:25  */
  assign n228 = n213 ? 1'b1 : 1'b0;
  /* spi.vhdl:75:25  */
  assign n230 = n213 ? 4'b0000 : n224;
  /* spi.vhdl:75:25  */
  assign n231 = n213 ? current_word : n361;
  /* spi.vhdl:70:21  */
  assign n233 = n210 ? n289 : 1'b0;
  /* spi.vhdl:70:21  */
  assign n234 = n210 ? n290 : n225;
  /* spi.vhdl:70:21  */
  assign n235 = n210 ? n291 : n228;
  /* spi.vhdl:70:21  */
  assign n236 = n210 ? bit_count : n230;
  /* spi.vhdl:70:21  */
  assign n237 = n210 ? current_word : n231;
  /* spi.vhdl:70:21  */
  assign n239 = n210 ? 2'b00 : state;
  /* spi.vhdl:69:17  */
  assign n241 = state == 2'b10;
  /* spi.vhdl:94:21  */
  assign n243 = i_cs ? 2'b01 : state;
  /* spi.vhdl:90:17  */
  assign n245 = state == 2'b00;
  assign n246 = {n245, n241, n209};
  /* spi.vhdl:53:13  */
  always @*
    case (n246)
      3'b100: n247 = n288;
      3'b010: n247 = n288;
      3'b001: n247 = n202;
      default: n247 = n288;
    endcase
  /* spi.vhdl:53:13  */
  always @*
    case (n246)
      3'b100: n249 = 1'b0;
      3'b010: n249 = n233;
      3'b001: n249 = n203;
      default: n249 = n289;
    endcase
  /* spi.vhdl:53:13  */
  always @*
    case (n246)
      3'b100: n250 = n290;
      3'b010: n250 = n234;
      3'b001: n250 = n290;
      default: n250 = n290;
    endcase
  /* spi.vhdl:53:13  */
  always @*
    case (n246)
      3'b100: n252 = 1'b0;
      3'b010: n252 = n235;
      3'b001: n252 = n291;
      default: n252 = n291;
    endcase
  /* spi.vhdl:53:13  */
  always @*
    case (n246)
      3'b100: n254 = 4'b0000;
      3'b010: n254 = n236;
      3'b001: n254 = n204;
      default: n254 = bit_count;
    endcase
  /* spi.vhdl:53:13  */
  always @*
    case (n246)
      3'b100: n255 = current_command;
      3'b010: n255 = current_command;
      3'b001: n255 = n205;
      default: n255 = current_command;
    endcase
  /* spi.vhdl:53:13  */
  always @*
    case (n246)
      3'b100: n256 = current_word;
      3'b010: n256 = n237;
      3'b001: n256 = current_word;
      default: n256 = current_word;
    endcase
  /* spi.vhdl:53:13  */
  always @*
    case (n246)
      3'b100: n258 = n243;
      3'b010: n258 = n239;
      3'b001: n258 = n207;
      default: n258 = 2'b00;
    endcase
  /* spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n284 <= 4'b0000;
    else
      n284 <= n254;
  /* spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n285 <= 8'b00000000;
    else
      n285 <= n255;
  /* spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n286 <= 8'b00000000;
    else
      n286 <= n256;
  /* spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n287 <= 2'b01;
    else
      n287 <= n258;
  /* spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n288 <= 8'b00000000;
    else
      n288 <= n247;
  /* spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n289 <= 1'b0;
    else
      n289 <= n249;
  /* spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n290 <= 8'b00000000;
    else
      n290 <= n250;
  /* spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n291 <= 1'b0;
    else
      n291 <= n252;
  /* spi.vhdl:58:25  */
  assign n292 = n185[2]; // extract
  /* spi.vhdl:58:25  */
  assign n293 = ~n292;
  /* spi.vhdl:58:25  */
  assign n294 = n185[1]; // extract
  /* spi.vhdl:58:25  */
  assign n295 = ~n294;
  /* spi.vhdl:58:25  */
  assign n296 = n293 & n295;
  /* spi.vhdl:58:25  */
  assign n297 = n293 & n294;
  /* spi.vhdl:58:25  */
  assign n298 = n292 & n295;
  /* spi.vhdl:58:25  */
  assign n299 = n292 & n294;
  /* spi.vhdl:58:25  */
  assign n300 = n185[0]; // extract
  /* spi.vhdl:58:25  */
  assign n301 = ~n300;
  /* spi.vhdl:58:25  */
  assign n302 = n296 & n301;
  /* spi.vhdl:58:25  */
  assign n303 = n296 & n300;
  /* spi.vhdl:58:25  */
  assign n304 = n297 & n301;
  /* spi.vhdl:58:25  */
  assign n305 = n297 & n300;
  /* spi.vhdl:58:25  */
  assign n306 = n298 & n301;
  /* spi.vhdl:58:25  */
  assign n307 = n298 & n300;
  /* spi.vhdl:58:25  */
  assign n308 = n299 & n301;
  /* spi.vhdl:58:25  */
  assign n309 = n299 & n300;
  assign n310 = current_command[0]; // extract
  /* spi.vhdl:58:25  */
  assign n311 = n302 ? i_copi : n310;
  assign n312 = current_command[1]; // extract
  /* spi.vhdl:58:25  */
  assign n313 = n303 ? i_copi : n312;
  assign n314 = current_command[2]; // extract
  /* spi.vhdl:58:25  */
  assign n315 = n304 ? i_copi : n314;
  assign n316 = current_command[3]; // extract
  /* spi.vhdl:58:25  */
  assign n317 = n305 ? i_copi : n316;
  assign n318 = current_command[4]; // extract
  /* spi.vhdl:58:25  */
  assign n319 = n306 ? i_copi : n318;
  assign n320 = current_command[5]; // extract
  /* spi.vhdl:58:25  */
  assign n321 = n307 ? i_copi : n320;
  assign n322 = current_command[6]; // extract
  /* spi.vhdl:58:25  */
  assign n323 = n308 ? i_copi : n322;
  assign n324 = current_command[7]; // extract
  /* spi.vhdl:58:25  */
  assign n325 = n309 ? i_copi : n324;
  assign n326 = {n325, n323, n321, n319, n317, n315, n313, n311};
  /* spi.vhdl:81:29  */
  assign n327 = n218[2]; // extract
  /* spi.vhdl:81:29  */
  assign n328 = ~n327;
  /* spi.vhdl:81:29  */
  assign n329 = n218[1]; // extract
  /* spi.vhdl:81:29  */
  assign n330 = ~n329;
  /* spi.vhdl:81:29  */
  assign n331 = n328 & n330;
  /* spi.vhdl:81:29  */
  assign n332 = n328 & n329;
  /* spi.vhdl:81:29  */
  assign n333 = n327 & n330;
  /* spi.vhdl:81:29  */
  assign n334 = n327 & n329;
  /* spi.vhdl:81:29  */
  assign n335 = n218[0]; // extract
  /* spi.vhdl:81:29  */
  assign n336 = ~n335;
  /* spi.vhdl:81:29  */
  assign n337 = n331 & n336;
  /* spi.vhdl:81:29  */
  assign n338 = n331 & n335;
  /* spi.vhdl:81:29  */
  assign n339 = n332 & n336;
  /* spi.vhdl:81:29  */
  assign n340 = n332 & n335;
  /* spi.vhdl:81:29  */
  assign n341 = n333 & n336;
  /* spi.vhdl:81:29  */
  assign n342 = n333 & n335;
  /* spi.vhdl:81:29  */
  assign n343 = n334 & n336;
  /* spi.vhdl:81:29  */
  assign n344 = n334 & n335;
  assign n345 = current_word[0]; // extract
  /* spi.vhdl:81:29  */
  assign n346 = n337 ? i_copi : n345;
  assign n347 = current_word[1]; // extract
  /* spi.vhdl:81:29  */
  assign n348 = n338 ? i_copi : n347;
  assign n349 = current_word[2]; // extract
  /* spi.vhdl:81:29  */
  assign n350 = n339 ? i_copi : n349;
  assign n351 = current_word[3]; // extract
  /* spi.vhdl:81:29  */
  assign n352 = n340 ? i_copi : n351;
  assign n353 = current_word[4]; // extract
  /* spi.vhdl:81:29  */
  assign n354 = n341 ? i_copi : n353;
  assign n355 = current_word[5]; // extract
  /* spi.vhdl:81:29  */
  assign n356 = n342 ? i_copi : n355;
  assign n357 = current_word[6]; // extract
  /* spi.vhdl:81:29  */
  assign n358 = n343 ? i_copi : n357;
  assign n359 = current_word[7]; // extract
  /* spi.vhdl:81:29  */
  assign n360 = n344 ? i_copi : n359;
  assign n361 = {n360, n358, n356, n354, n352, n350, n348, n346};
endmodule

module tt_um_spi2ws2811x16
  (input  clk,
   input  rst_n,
   input  ena,
   input  [7:0] ui_in,
   input  [7:0] uio_in,
   input  [7:0] uio_oe,
   output [7:0] uo_out,
   output [7:0] uio_out);
  wire rst;
  wire [7:0] word;
  wire word_ready;
  wire [15:0] strip_trigger;
  reg [3:0] strip_counter;
  wire n3;
  wire [7:0] \spi_controller.o_command ;
  wire \spi_controller.o_command_ready ;
  wire n4;
  wire n5;
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
  wire [15:0] n170;
  reg [3:0] n171;
  wire [7:0] n172;
  wire [7:0] n173;
  assign uo_out = n172; //(module output)
  assign uio_out = n173; //(module output)
  /* top.vhdl:19:16  */
  assign rst = n3; // (signal)
  /* top.vhdl:26:16  */
  assign strip_trigger = n170; // (signal)
  /* top.vhdl:27:16  */
  always @*
    strip_counter = n171; // (isignal)
  initial
    strip_counter = 4'b0000;
  /* top.vhdl:29:16  */
  assign n3 = ~rst_n;
  /* top.vhdl:31:9  */
  spi_8 spi_controller (
    .i_clock(clk),
    .i_reset(rst),
    .i_copi(n4),
    .i_cs(n5),
    .o_command(),
    .o_command_ready(),
    .o_word(word),
    .o_word_ready(word_ready));
  /* top.vhdl:37:32  */
  assign n4 = ui_in[1]; // extract
  /* top.vhdl:36:30  */
  assign n5 = ui_in[0]; // extract
  /* top.vhdl:49:17  */
  ws2811_8 led_o_n1_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n10),
    .i_pixel_data(word),
    .o_data(\led_o_n1_led.o_data ));
  /* top.vhdl:54:51  */
  assign n10 = strip_trigger[0]; // extract
  /* top.vhdl:49:17  */
  ws2811_8 led_o_n2_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n12),
    .i_pixel_data(word),
    .o_data(\led_o_n2_led.o_data ));
  /* top.vhdl:54:51  */
  assign n12 = strip_trigger[1]; // extract
  /* top.vhdl:49:17  */
  ws2811_8 led_o_n3_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n14),
    .i_pixel_data(word),
    .o_data(\led_o_n3_led.o_data ));
  /* top.vhdl:54:51  */
  assign n14 = strip_trigger[2]; // extract
  /* top.vhdl:49:17  */
  ws2811_8 led_o_n4_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n16),
    .i_pixel_data(word),
    .o_data(\led_o_n4_led.o_data ));
  /* top.vhdl:54:51  */
  assign n16 = strip_trigger[3]; // extract
  /* top.vhdl:49:17  */
  ws2811_8 led_o_n5_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n18),
    .i_pixel_data(word),
    .o_data(\led_o_n5_led.o_data ));
  /* top.vhdl:54:51  */
  assign n18 = strip_trigger[4]; // extract
  /* top.vhdl:49:17  */
  ws2811_8 led_o_n6_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n20),
    .i_pixel_data(word),
    .o_data(\led_o_n6_led.o_data ));
  /* top.vhdl:54:51  */
  assign n20 = strip_trigger[5]; // extract
  /* top.vhdl:49:17  */
  ws2811_8 led_o_n7_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n22),
    .i_pixel_data(word),
    .o_data(\led_o_n7_led.o_data ));
  /* top.vhdl:54:51  */
  assign n22 = strip_trigger[6]; // extract
  /* top.vhdl:49:17  */
  ws2811_8 led_o_n8_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n24),
    .i_pixel_data(word),
    .o_data(\led_o_n8_led.o_data ));
  /* top.vhdl:54:51  */
  assign n24 = strip_trigger[7]; // extract
  /* top.vhdl:64:17  */
  ws2811_8 led_io_n1_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n26),
    .i_pixel_data(word),
    .o_data(\led_io_n1_led.o_data ));
  /* top.vhdl:69:51  */
  assign n26 = strip_trigger[8]; // extract
  /* top.vhdl:64:17  */
  ws2811_8 led_io_n2_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n28),
    .i_pixel_data(word),
    .o_data(\led_io_n2_led.o_data ));
  /* top.vhdl:69:51  */
  assign n28 = strip_trigger[9]; // extract
  /* top.vhdl:64:17  */
  ws2811_8 led_io_n3_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n30),
    .i_pixel_data(word),
    .o_data(\led_io_n3_led.o_data ));
  /* top.vhdl:69:51  */
  assign n30 = strip_trigger[10]; // extract
  /* top.vhdl:64:17  */
  ws2811_8 led_io_n4_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n32),
    .i_pixel_data(word),
    .o_data(\led_io_n4_led.o_data ));
  /* top.vhdl:69:51  */
  assign n32 = strip_trigger[11]; // extract
  /* top.vhdl:64:17  */
  ws2811_8 led_io_n5_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n34),
    .i_pixel_data(word),
    .o_data(\led_io_n5_led.o_data ));
  /* top.vhdl:69:51  */
  assign n34 = strip_trigger[12]; // extract
  /* top.vhdl:64:17  */
  ws2811_8 led_io_n6_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n36),
    .i_pixel_data(word),
    .o_data(\led_io_n6_led.o_data ));
  /* top.vhdl:69:51  */
  assign n36 = strip_trigger[13]; // extract
  /* top.vhdl:64:17  */
  ws2811_8 led_io_n7_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n38),
    .i_pixel_data(word),
    .o_data(\led_io_n7_led.o_data ));
  /* top.vhdl:69:51  */
  assign n38 = strip_trigger[14]; // extract
  /* top.vhdl:64:17  */
  ws2811_8 led_io_n8_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n40),
    .i_pixel_data(word),
    .o_data(\led_io_n8_led.o_data ));
  /* top.vhdl:69:51  */
  assign n40 = strip_trigger[15]; // extract
  /* top.vhdl:81:42  */
  assign n45 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:81:42  */
  assign n47 = $signed(n45) < $signed(32'b00000000000000000000000000001111);
  /* top.vhdl:82:64  */
  assign n48 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:82:64  */
  assign n50 = n48 + 32'b00000000000000000000000000000001;
  /* top.vhdl:82:50  */
  assign n51 = n50[3:0];  // trunc
  /* top.vhdl:81:25  */
  assign n53 = n47 ? n51 : 4'b0000;
  /* top.vhdl:90:82  */
  assign n59 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:90:82  */
  assign n61 = n59 == 32'b00000000000000000000000000000000;
  /* top.vhdl:90:64  */
  assign n62 = n61 & word_ready;
  /* top.vhdl:90:41  */
  assign n63 = n62 ? 1'b1 : 1'b0;
  /* top.vhdl:90:82  */
  assign n66 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:90:82  */
  assign n68 = n66 == 32'b00000000000000000000000000000001;
  /* top.vhdl:90:64  */
  assign n69 = n68 & word_ready;
  /* top.vhdl:90:41  */
  assign n70 = n69 ? 1'b1 : 1'b0;
  /* top.vhdl:90:82  */
  assign n73 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:90:82  */
  assign n75 = n73 == 32'b00000000000000000000000000000010;
  /* top.vhdl:90:64  */
  assign n76 = n75 & word_ready;
  /* top.vhdl:90:41  */
  assign n77 = n76 ? 1'b1 : 1'b0;
  /* top.vhdl:90:82  */
  assign n80 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:90:82  */
  assign n82 = n80 == 32'b00000000000000000000000000000011;
  /* top.vhdl:90:64  */
  assign n83 = n82 & word_ready;
  /* top.vhdl:90:41  */
  assign n84 = n83 ? 1'b1 : 1'b0;
  /* top.vhdl:90:82  */
  assign n87 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:90:82  */
  assign n89 = n87 == 32'b00000000000000000000000000000100;
  /* top.vhdl:90:64  */
  assign n90 = n89 & word_ready;
  /* top.vhdl:90:41  */
  assign n91 = n90 ? 1'b1 : 1'b0;
  /* top.vhdl:90:82  */
  assign n94 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:90:82  */
  assign n96 = n94 == 32'b00000000000000000000000000000101;
  /* top.vhdl:90:64  */
  assign n97 = n96 & word_ready;
  /* top.vhdl:90:41  */
  assign n98 = n97 ? 1'b1 : 1'b0;
  /* top.vhdl:90:82  */
  assign n101 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:90:82  */
  assign n103 = n101 == 32'b00000000000000000000000000000110;
  /* top.vhdl:90:64  */
  assign n104 = n103 & word_ready;
  /* top.vhdl:90:41  */
  assign n105 = n104 ? 1'b1 : 1'b0;
  /* top.vhdl:90:82  */
  assign n108 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:90:82  */
  assign n110 = n108 == 32'b00000000000000000000000000000111;
  /* top.vhdl:90:64  */
  assign n111 = n110 & word_ready;
  /* top.vhdl:90:41  */
  assign n112 = n111 ? 1'b1 : 1'b0;
  /* top.vhdl:90:82  */
  assign n115 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:90:82  */
  assign n117 = n115 == 32'b00000000000000000000000000001000;
  /* top.vhdl:90:64  */
  assign n118 = n117 & word_ready;
  /* top.vhdl:90:41  */
  assign n119 = n118 ? 1'b1 : 1'b0;
  /* top.vhdl:90:82  */
  assign n122 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:90:82  */
  assign n124 = n122 == 32'b00000000000000000000000000001001;
  /* top.vhdl:90:64  */
  assign n125 = n124 & word_ready;
  /* top.vhdl:90:41  */
  assign n126 = n125 ? 1'b1 : 1'b0;
  /* top.vhdl:90:82  */
  assign n129 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:90:82  */
  assign n131 = n129 == 32'b00000000000000000000000000001010;
  /* top.vhdl:90:64  */
  assign n132 = n131 & word_ready;
  /* top.vhdl:90:41  */
  assign n133 = n132 ? 1'b1 : 1'b0;
  /* top.vhdl:90:82  */
  assign n136 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:90:82  */
  assign n138 = n136 == 32'b00000000000000000000000000001011;
  /* top.vhdl:90:64  */
  assign n139 = n138 & word_ready;
  /* top.vhdl:90:41  */
  assign n140 = n139 ? 1'b1 : 1'b0;
  /* top.vhdl:90:82  */
  assign n143 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:90:82  */
  assign n145 = n143 == 32'b00000000000000000000000000001100;
  /* top.vhdl:90:64  */
  assign n146 = n145 & word_ready;
  /* top.vhdl:90:41  */
  assign n147 = n146 ? 1'b1 : 1'b0;
  /* top.vhdl:90:82  */
  assign n150 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:90:82  */
  assign n152 = n150 == 32'b00000000000000000000000000001101;
  /* top.vhdl:90:64  */
  assign n153 = n152 & word_ready;
  /* top.vhdl:90:41  */
  assign n154 = n153 ? 1'b1 : 1'b0;
  /* top.vhdl:90:82  */
  assign n157 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:90:82  */
  assign n159 = n157 == 32'b00000000000000000000000000001110;
  /* top.vhdl:90:64  */
  assign n160 = n159 & word_ready;
  /* top.vhdl:90:41  */
  assign n161 = n160 ? 1'b1 : 1'b0;
  /* top.vhdl:90:82  */
  assign n164 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:90:82  */
  assign n166 = n164 == 32'b00000000000000000000000000001111;
  /* top.vhdl:90:64  */
  assign n167 = n166 & word_ready;
  /* top.vhdl:90:41  */
  assign n168 = n167 ? 1'b1 : 1'b0;
  assign n170 = {n168, n161, n154, n147, n140, n133, n126, n119, n112, n105, n98, n91, n84, n77, n70, n63};
  /* top.vhdl:80:17  */
  always @(negedge word_ready or posedge rst)
    if (rst)
      n171 <= 4'b0000;
    else
      n171 <= n53;
  /* top.vhdl:78:17  */
  assign n172 = {\led_o_n8_led.o_data , \led_o_n7_led.o_data , \led_o_n6_led.o_data , \led_o_n5_led.o_data , \led_o_n4_led.o_data , \led_o_n3_led.o_data , \led_o_n2_led.o_data , \led_o_n1_led.o_data };
  assign n173 = {\led_io_n8_led.o_data , \led_io_n7_led.o_data , \led_io_n6_led.o_data , \led_io_n5_led.o_data , \led_io_n4_led.o_data , \led_io_n3_led.o_data , \led_io_n2_led.o_data , \led_io_n1_led.o_data };
endmodule

