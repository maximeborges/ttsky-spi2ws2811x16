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
  wire n372;
  wire n373;
  wire n374;
  wire n376;
  wire [4:0] n378;
  wire n379;
  wire [7:0] n380;
  wire n382;
  wire [31:0] n383;
  wire n385;
  wire [31:0] n386;
  wire [31:0] n388;
  wire [4:0] n389;
  wire [31:0] n390;
  wire n392;
  wire n393;
  wire n394;
  wire [31:0] n395;
  wire n397;
  wire n398;
  wire n399;
  wire n401;
  wire [31:0] n402;
  wire n404;
  wire [31:0] n405;
  wire [31:0] n407;
  wire [3:0] n408;
  wire [31:0] n409;
  wire [31:0] n411;
  wire [31:0] n413;
  wire [2:0] n414;
  wire n419;
  wire [3:0] n421;
  wire n422;
  wire n424;
  wire n425;
  wire [4:0] n427;
  wire [3:0] n428;
  wire n429;
  wire n430;
  wire n431;
  wire [4:0] n432;
  wire [3:0] n433;
  wire n434;
  wire n435;
  wire n437;
  wire [4:0] n439;
  wire [3:0] n441;
  wire n443;
  wire [7:0] n445;
  wire n447;
  wire n462;
  wire [4:0] n463;
  reg [4:0] n464;
  wire n465;
  wire [3:0] n466;
  reg [3:0] n467;
  wire n468;
  wire n469;
  reg n470;
  wire n471;
  wire [7:0] n472;
  reg [7:0] n473;
  wire n474;
  wire n475;
  reg n476;
  reg n477;
  wire n478;
  assign o_data = n477; //(module output)
  /* ws2811.vhdl:26:16  */
  assign cyc_count = n464; // (signal)
  /* ws2811.vhdl:27:16  */
  assign bit_count = n467; // (signal)
  /* ws2811.vhdl:28:16  */
  always @*
    bit_data_in = n470; // (isignal)
  initial
    bit_data_in = 1'b0;
  /* ws2811.vhdl:30:16  */
  always @*
    rgb = n473; // (isignal)
  initial
    rgb = 8'b00000000;
  /* ws2811.vhdl:32:16  */
  always @*
    running = n476; // (isignal)
  initial
    running = 1'b0;
  /* ws2811.vhdl:61:44  */
  assign n372 = ~running;
  /* ws2811.vhdl:61:50  */
  assign n373 = i_trigger & n372;
  /* ws2811.vhdl:64:68  */
  assign n374 = i_pixel_data[7]; // extract
  /* ws2811.vhdl:61:33  */
  assign n376 = n373 ? 1'b1 : n477;
  /* ws2811.vhdl:61:33  */
  assign n378 = n373 ? 5'b00001 : cyc_count;
  /* ws2811.vhdl:61:33  */
  assign n379 = n373 ? n374 : bit_data_in;
  /* ws2811.vhdl:61:33  */
  assign n380 = n373 ? i_pixel_data : rgb;
  /* ws2811.vhdl:61:33  */
  assign n382 = n373 ? 1'b1 : running;
  /* ws2811.vhdl:70:54  */
  assign n383 = {27'b0, cyc_count};  //  uext
  /* ws2811.vhdl:70:54  */
  assign n385 = $signed(n383) < $signed(32'b00000000000000000000000000001111);
  /* ws2811.vhdl:71:72  */
  assign n386 = {27'b0, cyc_count};  //  uext
  /* ws2811.vhdl:71:72  */
  assign n388 = n386 + 32'b00000000000000000000000000000001;
  /* ws2811.vhdl:71:62  */
  assign n389 = n388[4:0];  // trunc
  /* ws2811.vhdl:72:85  */
  assign n390 = {27'b0, cyc_count};  //  uext
  /* ws2811.vhdl:72:85  */
  assign n392 = n390 == 32'b00000000000000000000000000001010;
  /* ws2811.vhdl:72:71  */
  assign n393 = n392 & bit_data_in;
  /* ws2811.vhdl:72:113  */
  assign n394 = ~bit_data_in;
  /* ws2811.vhdl:72:133  */
  assign n395 = {27'b0, cyc_count};  //  uext
  /* ws2811.vhdl:72:133  */
  assign n397 = n395 == 32'b00000000000000000000000000000110;
  /* ws2811.vhdl:72:119  */
  assign n398 = n397 & n394;
  /* ws2811.vhdl:72:97  */
  assign n399 = n393 | n398;
  /* ws2811.vhdl:72:49  */
  assign n401 = n399 ? 1'b0 : n376;
  /* ws2811.vhdl:77:62  */
  assign n402 = {28'b0, bit_count};  //  uext
  /* ws2811.vhdl:77:62  */
  assign n404 = $signed(n402) < $signed(32'b00000000000000000000000000000111);
  /* ws2811.vhdl:78:80  */
  assign n405 = {28'b0, bit_count};  //  uext
  /* ws2811.vhdl:78:80  */
  assign n407 = n405 + 32'b00000000000000000000000000000001;
  /* ws2811.vhdl:78:70  */
  assign n408 = n407[3:0];  // trunc
  /* ws2811.vhdl:79:87  */
  assign n409 = {28'b0, bit_count};  //  uext
  /* ws2811.vhdl:79:87  */
  assign n411 = 32'b00000000000000000000000000000111 - n409;
  /* ws2811.vhdl:79:99  */
  assign n413 = n411 - 32'b00000000000000000000000000000001;
  /* ws2811.vhdl:79:99  */
  assign n414 = n413[2:0];  // trunc
  /* ws2811.vhdl:77:49  */
  assign n419 = n404 ? 1'b1 : 1'b0;
  /* ws2811.vhdl:77:49  */
  assign n421 = n404 ? n408 : 4'b0000;
  /* ws2811.vhdl:77:49  */
  assign n422 = n404 ? n478 : n379;
  /* ws2811.vhdl:77:49  */
  assign n424 = n404 ? n382 : 1'b0;
  /* ws2811.vhdl:70:41  */
  assign n425 = n385 ? n401 : n419;
  /* ws2811.vhdl:70:41  */
  assign n427 = n385 ? n389 : 5'b00000;
  /* ws2811.vhdl:70:41  */
  assign n428 = n385 ? bit_count : n421;
  /* ws2811.vhdl:70:41  */
  assign n429 = n385 ? n379 : n422;
  /* ws2811.vhdl:70:41  */
  assign n430 = n385 ? n382 : n424;
  /* ws2811.vhdl:69:33  */
  assign n431 = running ? n425 : n376;
  /* ws2811.vhdl:69:33  */
  assign n432 = running ? n427 : n378;
  /* ws2811.vhdl:69:33  */
  assign n433 = running ? n428 : bit_count;
  /* ws2811.vhdl:69:33  */
  assign n434 = running ? n429 : n379;
  /* ws2811.vhdl:69:33  */
  assign n435 = running ? n430 : n382;
  /* ws2811.vhdl:52:25  */
  assign n437 = i_reset ? 1'b0 : n431;
  /* ws2811.vhdl:52:25  */
  assign n439 = i_reset ? 5'b00000 : n432;
  /* ws2811.vhdl:52:25  */
  assign n441 = i_reset ? 4'b0000 : n433;
  /* ws2811.vhdl:52:25  */
  assign n443 = i_reset ? 1'b0 : n434;
  /* ws2811.vhdl:52:25  */
  assign n445 = i_reset ? 8'b00000000 : n380;
  /* ws2811.vhdl:52:25  */
  assign n447 = i_reset ? 1'b0 : n435;
  /* ws2811.vhdl:47:9  */
  assign n462 = ~i_reset;
  /* ws2811.vhdl:51:17  */
  assign n463 = n462 ? n439 : cyc_count;
  /* ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n464 <= n463;
  /* ws2811.vhdl:47:9  */
  assign n465 = ~i_reset;
  /* ws2811.vhdl:51:17  */
  assign n466 = n465 ? n441 : bit_count;
  /* ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n467 <= n466;
  /* ws2811.vhdl:47:9  */
  assign n468 = ~i_reset;
  /* ws2811.vhdl:51:17  */
  assign n469 = n468 ? n443 : bit_data_in;
  /* ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n470 <= n469;
  initial
    n470 = 1'b0;
  /* ws2811.vhdl:47:9  */
  assign n471 = ~i_reset;
  /* ws2811.vhdl:51:17  */
  assign n472 = n471 ? n445 : rgb;
  /* ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n473 <= n472;
  initial
    n473 = 8'b00000000;
  /* ws2811.vhdl:47:9  */
  assign n474 = ~i_reset;
  /* ws2811.vhdl:51:17  */
  assign n475 = n474 ? n447 : running;
  /* ws2811.vhdl:51:17  */
  always @(posedge i_clock)
    n476 <= n475;
  initial
    n476 = 1'b0;
  /* ws2811.vhdl:51:17  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n477 <= 1'b0;
    else
      n477 <= n437;
  /* ws2811.vhdl:79:99  */
  assign n478 = rgb[n414 * 1 +: 1]; //(Bmux)
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
  wire n186;
  wire [2:0] n187;
  wire [31:0] n190;
  wire n192;
  wire [31:0] n193;
  wire [31:0] n195;
  wire [3:0] n196;
  wire [7:0] n197;
  wire n199;
  wire [3:0] n201;
  wire [1:0] n203;
  wire [7:0] n204;
  wire n205;
  wire [3:0] n206;
  wire [7:0] n207;
  wire [1:0] n209;
  wire n211;
  wire n212;
  wire [31:0] n213;
  wire n215;
  wire [6:0] n216;
  wire [7:0] n217;
  wire [2:0] n218;
  wire [2:0] n220;
  wire [31:0] n223;
  wire [31:0] n225;
  wire [3:0] n226;
  wire [7:0] n227;
  wire n230;
  wire [3:0] n232;
  wire [7:0] n233;
  wire n235;
  wire [7:0] n236;
  wire n237;
  wire [3:0] n238;
  wire [7:0] n239;
  wire [1:0] n241;
  wire n243;
  wire [1:0] n245;
  wire n247;
  wire [2:0] n248;
  reg [7:0] n249;
  reg n251;
  reg [7:0] n252;
  reg n254;
  reg [3:0] n256;
  reg [7:0] n257;
  reg [7:0] n258;
  reg [1:0] n260;
  reg [3:0] n286;
  reg [7:0] n287;
  reg [7:0] n288;
  reg [1:0] n289;
  reg [7:0] n290;
  reg n291;
  reg [7:0] n292;
  reg n293;
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
  wire n326;
  wire n327;
  wire [7:0] n328;
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
  wire n361;
  wire n362;
  wire [7:0] n363;
  assign o_command = n290; //(module output)
  assign o_command_ready = n291; //(module output)
  assign o_word = n292; //(module output)
  assign o_word_ready = n293; //(module output)
  /* spi.vhdl:28:12  */
  always @*
    bit_count = n286; // (isignal)
  initial
    bit_count = 4'b0000;
  /* spi.vhdl:29:12  */
  always @*
    current_command = n287; // (isignal)
  initial
    current_command = 8'b00000000;
  /* spi.vhdl:30:12  */
  always @*
    current_word = n288; // (isignal)
  initial
    current_word = 8'b00000000;
  /* spi.vhdl:38:12  */
  assign state = n289; // (signal)
  /* spi.vhdl:55:29  */
  assign n186 = ~i_cs;
  /* spi.vhdl:58:41  */
  assign n187 = bit_count[2:0];  // trunc
  /* spi.vhdl:59:38  */
  assign n190 = {28'b0, bit_count};  //  uext
  /* spi.vhdl:59:38  */
  assign n192 = n190 == 32'b00000000000000000000000000000111;
  /* spi.vhdl:65:52  */
  assign n193 = {28'b0, bit_count};  //  uext
  /* spi.vhdl:65:52  */
  assign n195 = n193 + 32'b00000000000000000000000000000001;
  /* spi.vhdl:65:42  */
  assign n196 = n195[3:0];  // trunc
  /* spi.vhdl:59:25  */
  assign n197 = n192 ? current_command : n290;
  /* spi.vhdl:59:25  */
  assign n199 = n192 ? 1'b1 : n291;
  /* spi.vhdl:59:25  */
  assign n201 = n192 ? 4'b0000 : n196;
  /* spi.vhdl:59:25  */
  assign n203 = n192 ? 2'b10 : state;
  /* spi.vhdl:55:21  */
  assign n204 = n186 ? n290 : n197;
  /* spi.vhdl:55:21  */
  assign n205 = n186 ? n291 : n199;
  /* spi.vhdl:55:21  */
  assign n206 = n186 ? bit_count : n201;
  /* spi.vhdl:55:21  */
  assign n207 = n186 ? current_command : n328;
  /* spi.vhdl:55:21  */
  assign n209 = n186 ? 2'b00 : n203;
  /* spi.vhdl:54:17  */
  assign n211 = state == 2'b01;
  /* spi.vhdl:70:29  */
  assign n212 = ~i_cs;
  /* spi.vhdl:75:38  */
  assign n213 = {28'b0, bit_count};  //  uext
  /* spi.vhdl:75:38  */
  assign n215 = n213 == 32'b00000000000000000000000000000111;
  /* spi.vhdl:76:51  */
  assign n216 = current_word[7:1]; // extract
  /* spi.vhdl:76:69  */
  assign n217 = {n216, i_copi};
  /* spi.vhdl:81:42  */
  assign n218 = bit_count[2:0];  // trunc
  /* spi.vhdl:81:42  */
  assign n220 = 3'b111 - n218;
  /* spi.vhdl:86:52  */
  assign n223 = {28'b0, bit_count};  //  uext
  /* spi.vhdl:86:52  */
  assign n225 = n223 + 32'b00000000000000000000000000000001;
  /* spi.vhdl:86:42  */
  assign n226 = n225[3:0];  // trunc
  /* spi.vhdl:75:25  */
  assign n227 = n215 ? n217 : n292;
  /* spi.vhdl:75:25  */
  assign n230 = n215 ? 1'b1 : 1'b0;
  /* spi.vhdl:75:25  */
  assign n232 = n215 ? 4'b0000 : n226;
  /* spi.vhdl:75:25  */
  assign n233 = n215 ? current_word : n363;
  /* spi.vhdl:70:21  */
  assign n235 = n212 ? n291 : 1'b0;
  /* spi.vhdl:70:21  */
  assign n236 = n212 ? n292 : n227;
  /* spi.vhdl:70:21  */
  assign n237 = n212 ? n293 : n230;
  /* spi.vhdl:70:21  */
  assign n238 = n212 ? bit_count : n232;
  /* spi.vhdl:70:21  */
  assign n239 = n212 ? current_word : n233;
  /* spi.vhdl:70:21  */
  assign n241 = n212 ? 2'b00 : state;
  /* spi.vhdl:69:17  */
  assign n243 = state == 2'b10;
  /* spi.vhdl:94:21  */
  assign n245 = i_cs ? 2'b01 : state;
  /* spi.vhdl:90:17  */
  assign n247 = state == 2'b00;
  assign n248 = {n247, n243, n211};
  /* spi.vhdl:53:13  */
  always @*
    case (n248)
      3'b100: n249 = n290;
      3'b010: n249 = n290;
      3'b001: n249 = n204;
      default: n249 = n290;
    endcase
  /* spi.vhdl:53:13  */
  always @*
    case (n248)
      3'b100: n251 = 1'b0;
      3'b010: n251 = n235;
      3'b001: n251 = n205;
      default: n251 = n291;
    endcase
  /* spi.vhdl:53:13  */
  always @*
    case (n248)
      3'b100: n252 = n292;
      3'b010: n252 = n236;
      3'b001: n252 = n292;
      default: n252 = n292;
    endcase
  /* spi.vhdl:53:13  */
  always @*
    case (n248)
      3'b100: n254 = 1'b0;
      3'b010: n254 = n237;
      3'b001: n254 = n293;
      default: n254 = n293;
    endcase
  /* spi.vhdl:53:13  */
  always @*
    case (n248)
      3'b100: n256 = 4'b0000;
      3'b010: n256 = n238;
      3'b001: n256 = n206;
      default: n256 = bit_count;
    endcase
  /* spi.vhdl:53:13  */
  always @*
    case (n248)
      3'b100: n257 = current_command;
      3'b010: n257 = current_command;
      3'b001: n257 = n207;
      default: n257 = current_command;
    endcase
  /* spi.vhdl:53:13  */
  always @*
    case (n248)
      3'b100: n258 = current_word;
      3'b010: n258 = n239;
      3'b001: n258 = current_word;
      default: n258 = current_word;
    endcase
  /* spi.vhdl:53:13  */
  always @*
    case (n248)
      3'b100: n260 = n245;
      3'b010: n260 = n241;
      3'b001: n260 = n209;
      default: n260 = 2'b00;
    endcase
  /* spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n286 <= 4'b0000;
    else
      n286 <= n256;
  /* spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n287 <= 8'b00000000;
    else
      n287 <= n257;
  /* spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n288 <= 8'b00000000;
    else
      n288 <= n258;
  /* spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n289 <= 2'b01;
    else
      n289 <= n260;
  /* spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n290 <= 8'b00000000;
    else
      n290 <= n249;
  /* spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n291 <= 1'b0;
    else
      n291 <= n251;
  /* spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n292 <= 8'b00000000;
    else
      n292 <= n252;
  /* spi.vhdl:52:9  */
  always @(posedge i_clock or posedge i_reset)
    if (i_reset)
      n293 <= 1'b0;
    else
      n293 <= n254;
  /* spi.vhdl:58:25  */
  assign n294 = n187[2]; // extract
  /* spi.vhdl:58:25  */
  assign n295 = ~n294;
  /* spi.vhdl:58:25  */
  assign n296 = n187[1]; // extract
  /* spi.vhdl:58:25  */
  assign n297 = ~n296;
  /* spi.vhdl:58:25  */
  assign n298 = n295 & n297;
  /* spi.vhdl:58:25  */
  assign n299 = n295 & n296;
  /* spi.vhdl:58:25  */
  assign n300 = n294 & n297;
  /* spi.vhdl:58:25  */
  assign n301 = n294 & n296;
  /* spi.vhdl:58:25  */
  assign n302 = n187[0]; // extract
  /* spi.vhdl:58:25  */
  assign n303 = ~n302;
  /* spi.vhdl:58:25  */
  assign n304 = n298 & n303;
  /* spi.vhdl:58:25  */
  assign n305 = n298 & n302;
  /* spi.vhdl:58:25  */
  assign n306 = n299 & n303;
  /* spi.vhdl:58:25  */
  assign n307 = n299 & n302;
  /* spi.vhdl:58:25  */
  assign n308 = n300 & n303;
  /* spi.vhdl:58:25  */
  assign n309 = n300 & n302;
  /* spi.vhdl:58:25  */
  assign n310 = n301 & n303;
  /* spi.vhdl:58:25  */
  assign n311 = n301 & n302;
  assign n312 = current_command[0]; // extract
  /* spi.vhdl:58:25  */
  assign n313 = n304 ? i_copi : n312;
  assign n314 = current_command[1]; // extract
  /* spi.vhdl:58:25  */
  assign n315 = n305 ? i_copi : n314;
  assign n316 = current_command[2]; // extract
  /* spi.vhdl:58:25  */
  assign n317 = n306 ? i_copi : n316;
  assign n318 = current_command[3]; // extract
  /* spi.vhdl:58:25  */
  assign n319 = n307 ? i_copi : n318;
  assign n320 = current_command[4]; // extract
  /* spi.vhdl:58:25  */
  assign n321 = n308 ? i_copi : n320;
  assign n322 = current_command[5]; // extract
  /* spi.vhdl:58:25  */
  assign n323 = n309 ? i_copi : n322;
  assign n324 = current_command[6]; // extract
  /* spi.vhdl:58:25  */
  assign n325 = n310 ? i_copi : n324;
  assign n326 = current_command[7]; // extract
  /* spi.vhdl:58:25  */
  assign n327 = n311 ? i_copi : n326;
  assign n328 = {n327, n325, n323, n321, n319, n317, n315, n313};
  /* spi.vhdl:81:29  */
  assign n329 = n220[2]; // extract
  /* spi.vhdl:81:29  */
  assign n330 = ~n329;
  /* spi.vhdl:81:29  */
  assign n331 = n220[1]; // extract
  /* spi.vhdl:81:29  */
  assign n332 = ~n331;
  /* spi.vhdl:81:29  */
  assign n333 = n330 & n332;
  /* spi.vhdl:81:29  */
  assign n334 = n330 & n331;
  /* spi.vhdl:81:29  */
  assign n335 = n329 & n332;
  /* spi.vhdl:81:29  */
  assign n336 = n329 & n331;
  /* spi.vhdl:81:29  */
  assign n337 = n220[0]; // extract
  /* spi.vhdl:81:29  */
  assign n338 = ~n337;
  /* spi.vhdl:81:29  */
  assign n339 = n333 & n338;
  /* spi.vhdl:81:29  */
  assign n340 = n333 & n337;
  /* spi.vhdl:81:29  */
  assign n341 = n334 & n338;
  /* spi.vhdl:81:29  */
  assign n342 = n334 & n337;
  /* spi.vhdl:81:29  */
  assign n343 = n335 & n338;
  /* spi.vhdl:81:29  */
  assign n344 = n335 & n337;
  /* spi.vhdl:81:29  */
  assign n345 = n336 & n338;
  /* spi.vhdl:81:29  */
  assign n346 = n336 & n337;
  assign n347 = current_word[0]; // extract
  /* spi.vhdl:81:29  */
  assign n348 = n339 ? i_copi : n347;
  assign n349 = current_word[1]; // extract
  /* spi.vhdl:81:29  */
  assign n350 = n340 ? i_copi : n349;
  assign n351 = current_word[2]; // extract
  /* spi.vhdl:81:29  */
  assign n352 = n341 ? i_copi : n351;
  assign n353 = current_word[3]; // extract
  /* spi.vhdl:81:29  */
  assign n354 = n342 ? i_copi : n353;
  assign n355 = current_word[4]; // extract
  /* spi.vhdl:81:29  */
  assign n356 = n343 ? i_copi : n355;
  assign n357 = current_word[5]; // extract
  /* spi.vhdl:81:29  */
  assign n358 = n344 ? i_copi : n357;
  assign n359 = current_word[6]; // extract
  /* spi.vhdl:81:29  */
  assign n360 = n345 ? i_copi : n359;
  assign n361 = current_word[7]; // extract
  /* spi.vhdl:81:29  */
  assign n362 = n346 ? i_copi : n361;
  assign n363 = {n362, n360, n358, n356, n354, n352, n350, n348};
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
  wire [7:0] \spi_controller.o_command ;
  wire \spi_controller.o_command_ready ;
  wire n6;
  wire n7;
  wire \led_o_n1_led.o_data ;
  wire n12;
  wire \led_o_n2_led.o_data ;
  wire n14;
  wire \led_o_n3_led.o_data ;
  wire n16;
  wire \led_o_n4_led.o_data ;
  wire n18;
  wire \led_o_n5_led.o_data ;
  wire n20;
  wire \led_o_n6_led.o_data ;
  wire n22;
  wire \led_o_n7_led.o_data ;
  wire n24;
  wire \led_o_n8_led.o_data ;
  wire n26;
  wire \led_io_n1_led.o_data ;
  wire n28;
  wire \led_io_n2_led.o_data ;
  wire n30;
  wire \led_io_n3_led.o_data ;
  wire n32;
  wire \led_io_n4_led.o_data ;
  wire n34;
  wire \led_io_n5_led.o_data ;
  wire n36;
  wire \led_io_n6_led.o_data ;
  wire n38;
  wire \led_io_n7_led.o_data ;
  wire n40;
  wire \led_io_n8_led.o_data ;
  wire n42;
  wire [31:0] n47;
  wire n49;
  wire [31:0] n50;
  wire [31:0] n52;
  wire [3:0] n53;
  wire [3:0] n55;
  wire [31:0] n61;
  wire n63;
  wire n64;
  wire n65;
  wire [31:0] n68;
  wire n70;
  wire n71;
  wire n72;
  wire [31:0] n75;
  wire n77;
  wire n78;
  wire n79;
  wire [31:0] n82;
  wire n84;
  wire n85;
  wire n86;
  wire [31:0] n89;
  wire n91;
  wire n92;
  wire n93;
  wire [31:0] n96;
  wire n98;
  wire n99;
  wire n100;
  wire [31:0] n103;
  wire n105;
  wire n106;
  wire n107;
  wire [31:0] n110;
  wire n112;
  wire n113;
  wire n114;
  wire [31:0] n117;
  wire n119;
  wire n120;
  wire n121;
  wire [31:0] n124;
  wire n126;
  wire n127;
  wire n128;
  wire [31:0] n131;
  wire n133;
  wire n134;
  wire n135;
  wire [31:0] n138;
  wire n140;
  wire n141;
  wire n142;
  wire [31:0] n145;
  wire n147;
  wire n148;
  wire n149;
  wire [31:0] n152;
  wire n154;
  wire n155;
  wire n156;
  wire [31:0] n159;
  wire n161;
  wire n162;
  wire n163;
  wire [31:0] n166;
  wire n168;
  wire n169;
  wire n170;
  wire [15:0] n172;
  reg [3:0] n173;
  wire [7:0] n174;
  wire [7:0] n175;
  assign uio_oe = n5; //(module output)
  assign uo_out = n174; //(module output)
  assign uio_out = n175; //(module output)
  /* top.vhdl:19:16  */
  assign rst = n4; // (signal)
  /* top.vhdl:26:16  */
  assign strip_trigger = n172; // (signal)
  /* top.vhdl:27:16  */
  always @*
    strip_counter = n173; // (isignal)
  initial
    strip_counter = 4'b0000;
  /* top.vhdl:29:16  */
  assign n4 = ~rst_n;
  /* top.vhdl:32:9  */
  spi_8 spi_controller (
    .i_clock(clk),
    .i_reset(rst),
    .i_copi(n6),
    .i_cs(n7),
    .o_command(),
    .o_command_ready(),
    .o_word(word),
    .o_word_ready(word_ready));
  /* top.vhdl:38:32  */
  assign n6 = ui_in[1]; // extract
  /* top.vhdl:37:30  */
  assign n7 = ui_in[0]; // extract
  /* top.vhdl:50:17  */
  ws2811_8 led_o_n1_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n12),
    .i_pixel_data(word),
    .o_data(\led_o_n1_led.o_data ));
  /* top.vhdl:55:51  */
  assign n12 = strip_trigger[0]; // extract
  /* top.vhdl:50:17  */
  ws2811_8 led_o_n2_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n14),
    .i_pixel_data(word),
    .o_data(\led_o_n2_led.o_data ));
  /* top.vhdl:55:51  */
  assign n14 = strip_trigger[1]; // extract
  /* top.vhdl:50:17  */
  ws2811_8 led_o_n3_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n16),
    .i_pixel_data(word),
    .o_data(\led_o_n3_led.o_data ));
  /* top.vhdl:55:51  */
  assign n16 = strip_trigger[2]; // extract
  /* top.vhdl:50:17  */
  ws2811_8 led_o_n4_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n18),
    .i_pixel_data(word),
    .o_data(\led_o_n4_led.o_data ));
  /* top.vhdl:55:51  */
  assign n18 = strip_trigger[3]; // extract
  /* top.vhdl:50:17  */
  ws2811_8 led_o_n5_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n20),
    .i_pixel_data(word),
    .o_data(\led_o_n5_led.o_data ));
  /* top.vhdl:55:51  */
  assign n20 = strip_trigger[4]; // extract
  /* top.vhdl:50:17  */
  ws2811_8 led_o_n6_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n22),
    .i_pixel_data(word),
    .o_data(\led_o_n6_led.o_data ));
  /* top.vhdl:55:51  */
  assign n22 = strip_trigger[5]; // extract
  /* top.vhdl:50:17  */
  ws2811_8 led_o_n7_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n24),
    .i_pixel_data(word),
    .o_data(\led_o_n7_led.o_data ));
  /* top.vhdl:55:51  */
  assign n24 = strip_trigger[6]; // extract
  /* top.vhdl:50:17  */
  ws2811_8 led_o_n8_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n26),
    .i_pixel_data(word),
    .o_data(\led_o_n8_led.o_data ));
  /* top.vhdl:55:51  */
  assign n26 = strip_trigger[7]; // extract
  /* top.vhdl:65:17  */
  ws2811_8 led_io_n1_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n28),
    .i_pixel_data(word),
    .o_data(\led_io_n1_led.o_data ));
  /* top.vhdl:70:51  */
  assign n28 = strip_trigger[8]; // extract
  /* top.vhdl:65:17  */
  ws2811_8 led_io_n2_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n30),
    .i_pixel_data(word),
    .o_data(\led_io_n2_led.o_data ));
  /* top.vhdl:70:51  */
  assign n30 = strip_trigger[9]; // extract
  /* top.vhdl:65:17  */
  ws2811_8 led_io_n3_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n32),
    .i_pixel_data(word),
    .o_data(\led_io_n3_led.o_data ));
  /* top.vhdl:70:51  */
  assign n32 = strip_trigger[10]; // extract
  /* top.vhdl:65:17  */
  ws2811_8 led_io_n4_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n34),
    .i_pixel_data(word),
    .o_data(\led_io_n4_led.o_data ));
  /* top.vhdl:70:51  */
  assign n34 = strip_trigger[11]; // extract
  /* top.vhdl:65:17  */
  ws2811_8 led_io_n5_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n36),
    .i_pixel_data(word),
    .o_data(\led_io_n5_led.o_data ));
  /* top.vhdl:70:51  */
  assign n36 = strip_trigger[12]; // extract
  /* top.vhdl:65:17  */
  ws2811_8 led_io_n6_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n38),
    .i_pixel_data(word),
    .o_data(\led_io_n6_led.o_data ));
  /* top.vhdl:70:51  */
  assign n38 = strip_trigger[13]; // extract
  /* top.vhdl:65:17  */
  ws2811_8 led_io_n7_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n40),
    .i_pixel_data(word),
    .o_data(\led_io_n7_led.o_data ));
  /* top.vhdl:70:51  */
  assign n40 = strip_trigger[14]; // extract
  /* top.vhdl:65:17  */
  ws2811_8 led_io_n8_led (
    .i_clock(clk),
    .i_reset(rst),
    .i_trigger(n42),
    .i_pixel_data(word),
    .o_data(\led_io_n8_led.o_data ));
  /* top.vhdl:70:51  */
  assign n42 = strip_trigger[15]; // extract
  /* top.vhdl:82:42  */
  assign n47 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:82:42  */
  assign n49 = $signed(n47) < $signed(32'b00000000000000000000000000001111);
  /* top.vhdl:83:64  */
  assign n50 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:83:64  */
  assign n52 = n50 + 32'b00000000000000000000000000000001;
  /* top.vhdl:83:50  */
  assign n53 = n52[3:0];  // trunc
  /* top.vhdl:82:25  */
  assign n55 = n49 ? n53 : 4'b0000;
  /* top.vhdl:91:82  */
  assign n61 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:91:82  */
  assign n63 = n61 == 32'b00000000000000000000000000000000;
  /* top.vhdl:91:64  */
  assign n64 = n63 & word_ready;
  /* top.vhdl:91:41  */
  assign n65 = n64 ? 1'b1 : 1'b0;
  /* top.vhdl:91:82  */
  assign n68 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:91:82  */
  assign n70 = n68 == 32'b00000000000000000000000000000001;
  /* top.vhdl:91:64  */
  assign n71 = n70 & word_ready;
  /* top.vhdl:91:41  */
  assign n72 = n71 ? 1'b1 : 1'b0;
  /* top.vhdl:91:82  */
  assign n75 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:91:82  */
  assign n77 = n75 == 32'b00000000000000000000000000000010;
  /* top.vhdl:91:64  */
  assign n78 = n77 & word_ready;
  /* top.vhdl:91:41  */
  assign n79 = n78 ? 1'b1 : 1'b0;
  /* top.vhdl:91:82  */
  assign n82 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:91:82  */
  assign n84 = n82 == 32'b00000000000000000000000000000011;
  /* top.vhdl:91:64  */
  assign n85 = n84 & word_ready;
  /* top.vhdl:91:41  */
  assign n86 = n85 ? 1'b1 : 1'b0;
  /* top.vhdl:91:82  */
  assign n89 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:91:82  */
  assign n91 = n89 == 32'b00000000000000000000000000000100;
  /* top.vhdl:91:64  */
  assign n92 = n91 & word_ready;
  /* top.vhdl:91:41  */
  assign n93 = n92 ? 1'b1 : 1'b0;
  /* top.vhdl:91:82  */
  assign n96 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:91:82  */
  assign n98 = n96 == 32'b00000000000000000000000000000101;
  /* top.vhdl:91:64  */
  assign n99 = n98 & word_ready;
  /* top.vhdl:91:41  */
  assign n100 = n99 ? 1'b1 : 1'b0;
  /* top.vhdl:91:82  */
  assign n103 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:91:82  */
  assign n105 = n103 == 32'b00000000000000000000000000000110;
  /* top.vhdl:91:64  */
  assign n106 = n105 & word_ready;
  /* top.vhdl:91:41  */
  assign n107 = n106 ? 1'b1 : 1'b0;
  /* top.vhdl:91:82  */
  assign n110 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:91:82  */
  assign n112 = n110 == 32'b00000000000000000000000000000111;
  /* top.vhdl:91:64  */
  assign n113 = n112 & word_ready;
  /* top.vhdl:91:41  */
  assign n114 = n113 ? 1'b1 : 1'b0;
  /* top.vhdl:91:82  */
  assign n117 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:91:82  */
  assign n119 = n117 == 32'b00000000000000000000000000001000;
  /* top.vhdl:91:64  */
  assign n120 = n119 & word_ready;
  /* top.vhdl:91:41  */
  assign n121 = n120 ? 1'b1 : 1'b0;
  /* top.vhdl:91:82  */
  assign n124 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:91:82  */
  assign n126 = n124 == 32'b00000000000000000000000000001001;
  /* top.vhdl:91:64  */
  assign n127 = n126 & word_ready;
  /* top.vhdl:91:41  */
  assign n128 = n127 ? 1'b1 : 1'b0;
  /* top.vhdl:91:82  */
  assign n131 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:91:82  */
  assign n133 = n131 == 32'b00000000000000000000000000001010;
  /* top.vhdl:91:64  */
  assign n134 = n133 & word_ready;
  /* top.vhdl:91:41  */
  assign n135 = n134 ? 1'b1 : 1'b0;
  /* top.vhdl:91:82  */
  assign n138 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:91:82  */
  assign n140 = n138 == 32'b00000000000000000000000000001011;
  /* top.vhdl:91:64  */
  assign n141 = n140 & word_ready;
  /* top.vhdl:91:41  */
  assign n142 = n141 ? 1'b1 : 1'b0;
  /* top.vhdl:91:82  */
  assign n145 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:91:82  */
  assign n147 = n145 == 32'b00000000000000000000000000001100;
  /* top.vhdl:91:64  */
  assign n148 = n147 & word_ready;
  /* top.vhdl:91:41  */
  assign n149 = n148 ? 1'b1 : 1'b0;
  /* top.vhdl:91:82  */
  assign n152 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:91:82  */
  assign n154 = n152 == 32'b00000000000000000000000000001101;
  /* top.vhdl:91:64  */
  assign n155 = n154 & word_ready;
  /* top.vhdl:91:41  */
  assign n156 = n155 ? 1'b1 : 1'b0;
  /* top.vhdl:91:82  */
  assign n159 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:91:82  */
  assign n161 = n159 == 32'b00000000000000000000000000001110;
  /* top.vhdl:91:64  */
  assign n162 = n161 & word_ready;
  /* top.vhdl:91:41  */
  assign n163 = n162 ? 1'b1 : 1'b0;
  /* top.vhdl:91:82  */
  assign n166 = {28'b0, strip_counter};  //  uext
  /* top.vhdl:91:82  */
  assign n168 = n166 == 32'b00000000000000000000000000001111;
  /* top.vhdl:91:64  */
  assign n169 = n168 & word_ready;
  /* top.vhdl:91:41  */
  assign n170 = n169 ? 1'b1 : 1'b0;
  assign n172 = {n170, n163, n156, n149, n142, n135, n128, n121, n114, n107, n100, n93, n86, n79, n72, n65};
  /* top.vhdl:81:17  */
  always @(negedge word_ready or posedge rst)
    if (rst)
      n173 <= 4'b0000;
    else
      n173 <= n55;
  /* top.vhdl:79:17  */
  assign n174 = {\led_o_n8_led.o_data , \led_o_n7_led.o_data , \led_o_n6_led.o_data , \led_o_n5_led.o_data , \led_o_n4_led.o_data , \led_o_n3_led.o_data , \led_o_n2_led.o_data , \led_o_n1_led.o_data };
  assign n175 = {\led_io_n8_led.o_data , \led_io_n7_led.o_data , \led_io_n6_led.o_data , \led_io_n5_led.o_data , \led_io_n4_led.o_data , \led_io_n3_led.o_data , \led_io_n2_led.o_data , \led_io_n1_led.o_data };
endmodule

