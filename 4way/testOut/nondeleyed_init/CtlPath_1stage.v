module CtlPath_1stage(
  input         clock,
  input         reset,
  input         io_imem_resp_valid,
  output        io_dmem_req_valid,
  output        io_dmem_req_bits_fcn,
  output [2:0]  io_dmem_req_bits_typ,
  input         io_dmem_resp_valid,
  input  [31:0] io_dat_inst,
  input         io_dat_imiss,
  input         io_dat_br_eq,
  input         io_dat_br_lt,
  input         io_dat_br_ltu,
  input         io_dat_csr_eret,
  input         io_dat_csr_interrupt,
  input         io_dat_inst_misaligned,
  input  [2:0]  io_dat_mem_address_low,
  output        io_ctl_stall,
  output        io_ctl_dmiss,
  output [2:0]  io_ctl_pc_sel,
  output [1:0]  io_ctl_op1_sel,
  output [1:0]  io_ctl_op2_sel,
  output [3:0]  io_ctl_alu_fun,
  output [1:0]  io_ctl_wb_sel,
  output        io_ctl_rf_wen,
  output [2:0]  io_ctl_csr_cmd,
  output        io_ctl_exception,
  output [31:0] io_ctl_exception_cause,
  output [2:0]  io_ctl_pc_sel_no_xept
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] _csignals_T = io_dat_inst & 32'h707f; // @[Lookup.scala 31:38]
  wire  _csignals_T_1 = 32'h2003 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_3 = 32'h3 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_5 = 32'h4003 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_7 = 32'h1003 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_9 = 32'h5003 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_11 = 32'h2023 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_13 = 32'h23 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_15 = 32'h1023 == _csignals_T; // @[Lookup.scala 31:38]
  wire [31:0] _csignals_T_16 = io_dat_inst & 32'h7f; // @[Lookup.scala 31:38]
  wire  _csignals_T_17 = 32'h17 == _csignals_T_16; // @[Lookup.scala 31:38]
  wire  _csignals_T_19 = 32'h37 == _csignals_T_16; // @[Lookup.scala 31:38]
  wire  _csignals_T_21 = 32'h13 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_23 = 32'h7013 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_25 = 32'h6013 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_27 = 32'h4013 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_29 = 32'h2013 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_31 = 32'h3013 == _csignals_T; // @[Lookup.scala 31:38]
  wire [31:0] _csignals_T_32 = io_dat_inst & 32'hfc00707f; // @[Lookup.scala 31:38]
  wire  _csignals_T_33 = 32'h1013 == _csignals_T_32; // @[Lookup.scala 31:38]
  wire  _csignals_T_35 = 32'h40005013 == _csignals_T_32; // @[Lookup.scala 31:38]
  wire  _csignals_T_37 = 32'h5013 == _csignals_T_32; // @[Lookup.scala 31:38]
  wire [31:0] _csignals_T_38 = io_dat_inst & 32'hfe00707f; // @[Lookup.scala 31:38]
  wire  _csignals_T_39 = 32'h1033 == _csignals_T_38; // @[Lookup.scala 31:38]
  wire  _csignals_T_41 = 32'h33 == _csignals_T_38; // @[Lookup.scala 31:38]
  wire  _csignals_T_43 = 32'h40000033 == _csignals_T_38; // @[Lookup.scala 31:38]
  wire  _csignals_T_45 = 32'h2033 == _csignals_T_38; // @[Lookup.scala 31:38]
  wire  _csignals_T_47 = 32'h3033 == _csignals_T_38; // @[Lookup.scala 31:38]
  wire  _csignals_T_49 = 32'h7033 == _csignals_T_38; // @[Lookup.scala 31:38]
  wire  _csignals_T_51 = 32'h6033 == _csignals_T_38; // @[Lookup.scala 31:38]
  wire  _csignals_T_53 = 32'h4033 == _csignals_T_38; // @[Lookup.scala 31:38]
  wire  _csignals_T_55 = 32'h40005033 == _csignals_T_38; // @[Lookup.scala 31:38]
  wire  _csignals_T_57 = 32'h5033 == _csignals_T_38; // @[Lookup.scala 31:38]
  wire  _csignals_T_59 = 32'h6f == _csignals_T_16; // @[Lookup.scala 31:38]
  wire  _csignals_T_61 = 32'h67 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_63 = 32'h63 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_65 = 32'h1063 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_67 = 32'h5063 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_69 = 32'h7063 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_71 = 32'h4063 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_73 = 32'h6063 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_75 = 32'h5073 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_77 = 32'h6073 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_79 = 32'h7073 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_81 = 32'h1073 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_83 = 32'h2073 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_85 = 32'h3073 == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_87 = 32'h73 == io_dat_inst; // @[Lookup.scala 31:38]
  wire  _csignals_T_89 = 32'h30200073 == io_dat_inst; // @[Lookup.scala 31:38]
  wire  _csignals_T_91 = 32'h7b200073 == io_dat_inst; // @[Lookup.scala 31:38]
  wire  _csignals_T_93 = 32'h100073 == io_dat_inst; // @[Lookup.scala 31:38]
  wire  _csignals_T_95 = 32'h10500073 == io_dat_inst; // @[Lookup.scala 31:38]
  wire  _csignals_T_97 = 32'h100f == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_99 = 32'hf == _csignals_T; // @[Lookup.scala 31:38]
  wire  _csignals_T_130 = _csignals_T_39 | (_csignals_T_41 | (_csignals_T_43 | (_csignals_T_45 | (_csignals_T_47 | (
    _csignals_T_49 | (_csignals_T_51 | (_csignals_T_53 | (_csignals_T_55 | (_csignals_T_57 | (_csignals_T_59 | (
    _csignals_T_61 | (_csignals_T_63 | (_csignals_T_65 | (_csignals_T_67 | (_csignals_T_69 | (_csignals_T_71 | (
    _csignals_T_73 | (_csignals_T_75 | (_csignals_T_77 | (_csignals_T_79 | (_csignals_T_81 | (_csignals_T_83 | (
    _csignals_T_85 | (_csignals_T_87 | (_csignals_T_89 | (_csignals_T_91 | (_csignals_T_93 | (_csignals_T_95 | (
    _csignals_T_97 | _csignals_T_99))))))))))))))))))))))))))))); // @[Lookup.scala 34:39]
  wire  cs_val_inst = _csignals_T_1 | (_csignals_T_3 | (_csignals_T_5 | (_csignals_T_7 | (_csignals_T_9 | (
    _csignals_T_11 | (_csignals_T_13 | (_csignals_T_15 | (_csignals_T_17 | (_csignals_T_19 | (_csignals_T_21 | (
    _csignals_T_23 | (_csignals_T_25 | (_csignals_T_27 | (_csignals_T_29 | (_csignals_T_31 | (_csignals_T_33 | (
    _csignals_T_35 | (_csignals_T_37 | _csignals_T_130)))))))))))))))))); // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_162 = _csignals_T_73 ? 4'h6 : 4'h0; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_163 = _csignals_T_71 ? 4'h5 : _csignals_T_162; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_164 = _csignals_T_69 ? 4'h4 : _csignals_T_163; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_165 = _csignals_T_67 ? 4'h3 : _csignals_T_164; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_166 = _csignals_T_65 ? 4'h1 : _csignals_T_165; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_167 = _csignals_T_63 ? 4'h2 : _csignals_T_166; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_168 = _csignals_T_61 ? 4'h8 : _csignals_T_167; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_169 = _csignals_T_59 ? 4'h7 : _csignals_T_168; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_170 = _csignals_T_57 ? 4'h0 : _csignals_T_169; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_171 = _csignals_T_55 ? 4'h0 : _csignals_T_170; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_172 = _csignals_T_53 ? 4'h0 : _csignals_T_171; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_173 = _csignals_T_51 ? 4'h0 : _csignals_T_172; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_174 = _csignals_T_49 ? 4'h0 : _csignals_T_173; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_175 = _csignals_T_47 ? 4'h0 : _csignals_T_174; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_176 = _csignals_T_45 ? 4'h0 : _csignals_T_175; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_177 = _csignals_T_43 ? 4'h0 : _csignals_T_176; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_178 = _csignals_T_41 ? 4'h0 : _csignals_T_177; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_179 = _csignals_T_39 ? 4'h0 : _csignals_T_178; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_180 = _csignals_T_37 ? 4'h0 : _csignals_T_179; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_181 = _csignals_T_35 ? 4'h0 : _csignals_T_180; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_182 = _csignals_T_33 ? 4'h0 : _csignals_T_181; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_183 = _csignals_T_31 ? 4'h0 : _csignals_T_182; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_184 = _csignals_T_29 ? 4'h0 : _csignals_T_183; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_185 = _csignals_T_27 ? 4'h0 : _csignals_T_184; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_186 = _csignals_T_25 ? 4'h0 : _csignals_T_185; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_187 = _csignals_T_23 ? 4'h0 : _csignals_T_186; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_188 = _csignals_T_21 ? 4'h0 : _csignals_T_187; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_189 = _csignals_T_19 ? 4'h0 : _csignals_T_188; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_190 = _csignals_T_17 ? 4'h0 : _csignals_T_189; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_191 = _csignals_T_15 ? 4'h0 : _csignals_T_190; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_192 = _csignals_T_13 ? 4'h0 : _csignals_T_191; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_193 = _csignals_T_11 ? 4'h0 : _csignals_T_192; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_194 = _csignals_T_9 ? 4'h0 : _csignals_T_193; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_195 = _csignals_T_7 ? 4'h0 : _csignals_T_194; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_196 = _csignals_T_5 ? 4'h0 : _csignals_T_195; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_197 = _csignals_T_3 ? 4'h0 : _csignals_T_196; // @[Lookup.scala 34:39]
  wire [3:0] cs_br_type = _csignals_T_1 ? 4'h0 : _csignals_T_197; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_208 = _csignals_T_79 ? 2'h2 : 2'h0; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_209 = _csignals_T_77 ? 2'h2 : _csignals_T_208; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_210 = _csignals_T_75 ? 2'h2 : _csignals_T_209; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_211 = _csignals_T_73 ? 2'h0 : _csignals_T_210; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_212 = _csignals_T_71 ? 2'h0 : _csignals_T_211; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_213 = _csignals_T_69 ? 2'h0 : _csignals_T_212; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_214 = _csignals_T_67 ? 2'h0 : _csignals_T_213; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_215 = _csignals_T_65 ? 2'h0 : _csignals_T_214; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_216 = _csignals_T_63 ? 2'h0 : _csignals_T_215; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_217 = _csignals_T_61 ? 2'h0 : _csignals_T_216; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_218 = _csignals_T_59 ? 2'h0 : _csignals_T_217; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_219 = _csignals_T_57 ? 2'h0 : _csignals_T_218; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_220 = _csignals_T_55 ? 2'h0 : _csignals_T_219; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_221 = _csignals_T_53 ? 2'h0 : _csignals_T_220; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_222 = _csignals_T_51 ? 2'h0 : _csignals_T_221; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_223 = _csignals_T_49 ? 2'h0 : _csignals_T_222; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_224 = _csignals_T_47 ? 2'h0 : _csignals_T_223; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_225 = _csignals_T_45 ? 2'h0 : _csignals_T_224; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_226 = _csignals_T_43 ? 2'h0 : _csignals_T_225; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_227 = _csignals_T_41 ? 2'h0 : _csignals_T_226; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_228 = _csignals_T_39 ? 2'h0 : _csignals_T_227; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_229 = _csignals_T_37 ? 2'h0 : _csignals_T_228; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_230 = _csignals_T_35 ? 2'h0 : _csignals_T_229; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_231 = _csignals_T_33 ? 2'h0 : _csignals_T_230; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_232 = _csignals_T_31 ? 2'h0 : _csignals_T_231; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_233 = _csignals_T_29 ? 2'h0 : _csignals_T_232; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_234 = _csignals_T_27 ? 2'h0 : _csignals_T_233; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_235 = _csignals_T_25 ? 2'h0 : _csignals_T_234; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_236 = _csignals_T_23 ? 2'h0 : _csignals_T_235; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_237 = _csignals_T_21 ? 2'h0 : _csignals_T_236; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_238 = _csignals_T_19 ? 2'h1 : _csignals_T_237; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_239 = _csignals_T_17 ? 2'h1 : _csignals_T_238; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_240 = _csignals_T_15 ? 2'h0 : _csignals_T_239; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_241 = _csignals_T_13 ? 2'h0 : _csignals_T_240; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_242 = _csignals_T_11 ? 2'h0 : _csignals_T_241; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_243 = _csignals_T_9 ? 2'h0 : _csignals_T_242; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_244 = _csignals_T_7 ? 2'h0 : _csignals_T_243; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_245 = _csignals_T_5 ? 2'h0 : _csignals_T_244; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_246 = _csignals_T_3 ? 2'h0 : _csignals_T_245; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_266 = _csignals_T_61 ? 2'h1 : 2'h0; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_267 = _csignals_T_59 ? 2'h0 : _csignals_T_266; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_268 = _csignals_T_57 ? 2'h0 : _csignals_T_267; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_269 = _csignals_T_55 ? 2'h0 : _csignals_T_268; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_270 = _csignals_T_53 ? 2'h0 : _csignals_T_269; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_271 = _csignals_T_51 ? 2'h0 : _csignals_T_270; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_272 = _csignals_T_49 ? 2'h0 : _csignals_T_271; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_273 = _csignals_T_47 ? 2'h0 : _csignals_T_272; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_274 = _csignals_T_45 ? 2'h0 : _csignals_T_273; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_275 = _csignals_T_43 ? 2'h0 : _csignals_T_274; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_276 = _csignals_T_41 ? 2'h0 : _csignals_T_275; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_277 = _csignals_T_39 ? 2'h0 : _csignals_T_276; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_278 = _csignals_T_37 ? 2'h1 : _csignals_T_277; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_279 = _csignals_T_35 ? 2'h1 : _csignals_T_278; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_280 = _csignals_T_33 ? 2'h1 : _csignals_T_279; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_281 = _csignals_T_31 ? 2'h1 : _csignals_T_280; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_282 = _csignals_T_29 ? 2'h1 : _csignals_T_281; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_283 = _csignals_T_27 ? 2'h1 : _csignals_T_282; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_284 = _csignals_T_25 ? 2'h1 : _csignals_T_283; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_285 = _csignals_T_23 ? 2'h1 : _csignals_T_284; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_286 = _csignals_T_21 ? 2'h1 : _csignals_T_285; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_287 = _csignals_T_19 ? 2'h0 : _csignals_T_286; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_288 = _csignals_T_17 ? 2'h3 : _csignals_T_287; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_289 = _csignals_T_15 ? 2'h2 : _csignals_T_288; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_290 = _csignals_T_13 ? 2'h2 : _csignals_T_289; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_291 = _csignals_T_11 ? 2'h2 : _csignals_T_290; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_292 = _csignals_T_9 ? 2'h1 : _csignals_T_291; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_293 = _csignals_T_7 ? 2'h1 : _csignals_T_292; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_294 = _csignals_T_5 ? 2'h1 : _csignals_T_293; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_295 = _csignals_T_3 ? 2'h1 : _csignals_T_294; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_303 = _csignals_T_85 ? 4'hb : 4'h0; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_304 = _csignals_T_83 ? 4'hb : _csignals_T_303; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_305 = _csignals_T_81 ? 4'hb : _csignals_T_304; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_306 = _csignals_T_79 ? 4'hb : _csignals_T_305; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_307 = _csignals_T_77 ? 4'hb : _csignals_T_306; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_308 = _csignals_T_75 ? 4'hb : _csignals_T_307; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_309 = _csignals_T_73 ? 4'h0 : _csignals_T_308; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_310 = _csignals_T_71 ? 4'h0 : _csignals_T_309; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_311 = _csignals_T_69 ? 4'h0 : _csignals_T_310; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_312 = _csignals_T_67 ? 4'h0 : _csignals_T_311; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_313 = _csignals_T_65 ? 4'h0 : _csignals_T_312; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_314 = _csignals_T_63 ? 4'h0 : _csignals_T_313; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_315 = _csignals_T_61 ? 4'h0 : _csignals_T_314; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_316 = _csignals_T_59 ? 4'h0 : _csignals_T_315; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_317 = _csignals_T_57 ? 4'h4 : _csignals_T_316; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_318 = _csignals_T_55 ? 4'h5 : _csignals_T_317; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_319 = _csignals_T_53 ? 4'h8 : _csignals_T_318; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_320 = _csignals_T_51 ? 4'h7 : _csignals_T_319; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_321 = _csignals_T_49 ? 4'h6 : _csignals_T_320; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_322 = _csignals_T_47 ? 4'ha : _csignals_T_321; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_323 = _csignals_T_45 ? 4'h9 : _csignals_T_322; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_324 = _csignals_T_43 ? 4'h2 : _csignals_T_323; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_325 = _csignals_T_41 ? 4'h1 : _csignals_T_324; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_326 = _csignals_T_39 ? 4'h3 : _csignals_T_325; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_327 = _csignals_T_37 ? 4'h4 : _csignals_T_326; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_328 = _csignals_T_35 ? 4'h5 : _csignals_T_327; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_329 = _csignals_T_33 ? 4'h3 : _csignals_T_328; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_330 = _csignals_T_31 ? 4'ha : _csignals_T_329; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_331 = _csignals_T_29 ? 4'h9 : _csignals_T_330; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_332 = _csignals_T_27 ? 4'h8 : _csignals_T_331; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_333 = _csignals_T_25 ? 4'h7 : _csignals_T_332; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_334 = _csignals_T_23 ? 4'h6 : _csignals_T_333; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_335 = _csignals_T_21 ? 4'h1 : _csignals_T_334; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_336 = _csignals_T_19 ? 4'hb : _csignals_T_335; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_337 = _csignals_T_17 ? 4'h1 : _csignals_T_336; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_338 = _csignals_T_15 ? 4'h1 : _csignals_T_337; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_339 = _csignals_T_13 ? 4'h1 : _csignals_T_338; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_340 = _csignals_T_11 ? 4'h1 : _csignals_T_339; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_341 = _csignals_T_9 ? 4'h1 : _csignals_T_340; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_342 = _csignals_T_7 ? 4'h1 : _csignals_T_341; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_343 = _csignals_T_5 ? 4'h1 : _csignals_T_342; // @[Lookup.scala 34:39]
  wire [3:0] _csignals_T_344 = _csignals_T_3 ? 4'h1 : _csignals_T_343; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_352 = _csignals_T_85 ? 2'h3 : 2'h0; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_353 = _csignals_T_83 ? 2'h3 : _csignals_T_352; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_354 = _csignals_T_81 ? 2'h3 : _csignals_T_353; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_355 = _csignals_T_79 ? 2'h3 : _csignals_T_354; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_356 = _csignals_T_77 ? 2'h3 : _csignals_T_355; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_357 = _csignals_T_75 ? 2'h3 : _csignals_T_356; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_358 = _csignals_T_73 ? 2'h0 : _csignals_T_357; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_359 = _csignals_T_71 ? 2'h0 : _csignals_T_358; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_360 = _csignals_T_69 ? 2'h0 : _csignals_T_359; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_361 = _csignals_T_67 ? 2'h0 : _csignals_T_360; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_362 = _csignals_T_65 ? 2'h0 : _csignals_T_361; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_363 = _csignals_T_63 ? 2'h0 : _csignals_T_362; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_364 = _csignals_T_61 ? 2'h2 : _csignals_T_363; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_365 = _csignals_T_59 ? 2'h2 : _csignals_T_364; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_366 = _csignals_T_57 ? 2'h0 : _csignals_T_365; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_367 = _csignals_T_55 ? 2'h0 : _csignals_T_366; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_368 = _csignals_T_53 ? 2'h0 : _csignals_T_367; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_369 = _csignals_T_51 ? 2'h0 : _csignals_T_368; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_370 = _csignals_T_49 ? 2'h0 : _csignals_T_369; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_371 = _csignals_T_47 ? 2'h0 : _csignals_T_370; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_372 = _csignals_T_45 ? 2'h0 : _csignals_T_371; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_373 = _csignals_T_43 ? 2'h0 : _csignals_T_372; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_374 = _csignals_T_41 ? 2'h0 : _csignals_T_373; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_375 = _csignals_T_39 ? 2'h0 : _csignals_T_374; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_376 = _csignals_T_37 ? 2'h0 : _csignals_T_375; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_377 = _csignals_T_35 ? 2'h0 : _csignals_T_376; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_378 = _csignals_T_33 ? 2'h0 : _csignals_T_377; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_379 = _csignals_T_31 ? 2'h0 : _csignals_T_378; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_380 = _csignals_T_29 ? 2'h0 : _csignals_T_379; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_381 = _csignals_T_27 ? 2'h0 : _csignals_T_380; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_382 = _csignals_T_25 ? 2'h0 : _csignals_T_381; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_383 = _csignals_T_23 ? 2'h0 : _csignals_T_382; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_384 = _csignals_T_21 ? 2'h0 : _csignals_T_383; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_385 = _csignals_T_19 ? 2'h0 : _csignals_T_384; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_386 = _csignals_T_17 ? 2'h0 : _csignals_T_385; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_387 = _csignals_T_15 ? 2'h0 : _csignals_T_386; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_388 = _csignals_T_13 ? 2'h0 : _csignals_T_387; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_389 = _csignals_T_11 ? 2'h0 : _csignals_T_388; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_390 = _csignals_T_9 ? 2'h1 : _csignals_T_389; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_391 = _csignals_T_7 ? 2'h1 : _csignals_T_390; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_392 = _csignals_T_5 ? 2'h1 : _csignals_T_391; // @[Lookup.scala 34:39]
  wire [1:0] _csignals_T_393 = _csignals_T_3 ? 2'h1 : _csignals_T_392; // @[Lookup.scala 34:39]
  wire  _csignals_T_407 = _csignals_T_73 ? 1'h0 : _csignals_T_75 | (_csignals_T_77 | (_csignals_T_79 | (_csignals_T_81
     | (_csignals_T_83 | _csignals_T_85)))); // @[Lookup.scala 34:39]
  wire  _csignals_T_408 = _csignals_T_71 ? 1'h0 : _csignals_T_407; // @[Lookup.scala 34:39]
  wire  _csignals_T_409 = _csignals_T_69 ? 1'h0 : _csignals_T_408; // @[Lookup.scala 34:39]
  wire  _csignals_T_410 = _csignals_T_67 ? 1'h0 : _csignals_T_409; // @[Lookup.scala 34:39]
  wire  _csignals_T_411 = _csignals_T_65 ? 1'h0 : _csignals_T_410; // @[Lookup.scala 34:39]
  wire  _csignals_T_412 = _csignals_T_63 ? 1'h0 : _csignals_T_411; // @[Lookup.scala 34:39]
  wire  _csignals_T_436 = _csignals_T_15 ? 1'h0 : _csignals_T_17 | (_csignals_T_19 | (_csignals_T_21 | (_csignals_T_23
     | (_csignals_T_25 | (_csignals_T_27 | (_csignals_T_29 | (_csignals_T_31 | (_csignals_T_33 | (_csignals_T_35 | (
    _csignals_T_37 | (_csignals_T_39 | (_csignals_T_41 | (_csignals_T_43 | (_csignals_T_45 | (_csignals_T_47 | (
    _csignals_T_49 | (_csignals_T_51 | (_csignals_T_53 | (_csignals_T_55 | (_csignals_T_57 | (_csignals_T_59 | (
    _csignals_T_61 | _csignals_T_412)))))))))))))))))))))); // @[Lookup.scala 34:39]
  wire  _csignals_T_437 = _csignals_T_13 ? 1'h0 : _csignals_T_436; // @[Lookup.scala 34:39]
  wire  _csignals_T_438 = _csignals_T_11 ? 1'h0 : _csignals_T_437; // @[Lookup.scala 34:39]
  wire  cs0_2 = _csignals_T_1 | (_csignals_T_3 | (_csignals_T_5 | (_csignals_T_7 | (_csignals_T_9 | _csignals_T_438)))); // @[Lookup.scala 34:39]
  wire  cs0_3 = _csignals_T_1 | (_csignals_T_3 | (_csignals_T_5 | (_csignals_T_7 | (_csignals_T_9 | (_csignals_T_11 | (
    _csignals_T_13 | _csignals_T_15)))))); // @[Lookup.scala 34:39]
  wire  _csignals_T_537 = _csignals_T_9 ? 1'h0 : _csignals_T_11 | (_csignals_T_13 | _csignals_T_15); // @[Lookup.scala 34:39]
  wire  _csignals_T_538 = _csignals_T_7 ? 1'h0 : _csignals_T_537; // @[Lookup.scala 34:39]
  wire  _csignals_T_539 = _csignals_T_5 ? 1'h0 : _csignals_T_538; // @[Lookup.scala 34:39]
  wire  _csignals_T_540 = _csignals_T_3 ? 1'h0 : _csignals_T_539; // @[Lookup.scala 34:39]
  wire  cs0_4 = _csignals_T_1 ? 1'h0 : _csignals_T_540; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_583 = _csignals_T_15 ? 3'h2 : 3'h0; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_584 = _csignals_T_13 ? 3'h1 : _csignals_T_583; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_585 = _csignals_T_11 ? 3'h3 : _csignals_T_584; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_586 = _csignals_T_9 ? 3'h6 : _csignals_T_585; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_587 = _csignals_T_7 ? 3'h2 : _csignals_T_586; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_588 = _csignals_T_5 ? 3'h5 : _csignals_T_587; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_589 = _csignals_T_3 ? 3'h1 : _csignals_T_588; // @[Lookup.scala 34:39]
  wire [2:0] cs0_5 = _csignals_T_1 ? 3'h3 : _csignals_T_589; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_593 = _csignals_T_93 ? 3'h4 : 3'h0; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_594 = _csignals_T_91 ? 3'h4 : _csignals_T_593; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_595 = _csignals_T_89 ? 3'h4 : _csignals_T_594; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_596 = _csignals_T_87 ? 3'h4 : _csignals_T_595; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_597 = _csignals_T_85 ? 3'h7 : _csignals_T_596; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_598 = _csignals_T_83 ? 3'h6 : _csignals_T_597; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_599 = _csignals_T_81 ? 3'h5 : _csignals_T_598; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_600 = _csignals_T_79 ? 3'h7 : _csignals_T_599; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_601 = _csignals_T_77 ? 3'h6 : _csignals_T_600; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_602 = _csignals_T_75 ? 3'h5 : _csignals_T_601; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_603 = _csignals_T_73 ? 3'h0 : _csignals_T_602; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_604 = _csignals_T_71 ? 3'h0 : _csignals_T_603; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_605 = _csignals_T_69 ? 3'h0 : _csignals_T_604; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_606 = _csignals_T_67 ? 3'h0 : _csignals_T_605; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_607 = _csignals_T_65 ? 3'h0 : _csignals_T_606; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_608 = _csignals_T_63 ? 3'h0 : _csignals_T_607; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_609 = _csignals_T_61 ? 3'h0 : _csignals_T_608; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_610 = _csignals_T_59 ? 3'h0 : _csignals_T_609; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_611 = _csignals_T_57 ? 3'h0 : _csignals_T_610; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_612 = _csignals_T_55 ? 3'h0 : _csignals_T_611; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_613 = _csignals_T_53 ? 3'h0 : _csignals_T_612; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_614 = _csignals_T_51 ? 3'h0 : _csignals_T_613; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_615 = _csignals_T_49 ? 3'h0 : _csignals_T_614; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_616 = _csignals_T_47 ? 3'h0 : _csignals_T_615; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_617 = _csignals_T_45 ? 3'h0 : _csignals_T_616; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_618 = _csignals_T_43 ? 3'h0 : _csignals_T_617; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_619 = _csignals_T_41 ? 3'h0 : _csignals_T_618; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_620 = _csignals_T_39 ? 3'h0 : _csignals_T_619; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_621 = _csignals_T_37 ? 3'h0 : _csignals_T_620; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_622 = _csignals_T_35 ? 3'h0 : _csignals_T_621; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_623 = _csignals_T_33 ? 3'h0 : _csignals_T_622; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_624 = _csignals_T_31 ? 3'h0 : _csignals_T_623; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_625 = _csignals_T_29 ? 3'h0 : _csignals_T_624; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_626 = _csignals_T_27 ? 3'h0 : _csignals_T_625; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_627 = _csignals_T_25 ? 3'h0 : _csignals_T_626; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_628 = _csignals_T_23 ? 3'h0 : _csignals_T_627; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_629 = _csignals_T_21 ? 3'h0 : _csignals_T_628; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_630 = _csignals_T_19 ? 3'h0 : _csignals_T_629; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_631 = _csignals_T_17 ? 3'h0 : _csignals_T_630; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_632 = _csignals_T_15 ? 3'h0 : _csignals_T_631; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_633 = _csignals_T_13 ? 3'h0 : _csignals_T_632; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_634 = _csignals_T_11 ? 3'h0 : _csignals_T_633; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_635 = _csignals_T_9 ? 3'h0 : _csignals_T_634; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_636 = _csignals_T_7 ? 3'h0 : _csignals_T_635; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_637 = _csignals_T_5 ? 3'h0 : _csignals_T_636; // @[Lookup.scala 34:39]
  wire [2:0] _csignals_T_638 = _csignals_T_3 ? 3'h0 : _csignals_T_637; // @[Lookup.scala 34:39]
  wire [2:0] cs0_6 = _csignals_T_1 ? 3'h0 : _csignals_T_638; // @[Lookup.scala 34:39]
  wire [2:0] _ctrl_pc_sel_no_xept_T_3 = ~io_dat_br_eq ? 3'h1 : 3'h0; // @[cpath.scala 122:62]
  wire [2:0] _ctrl_pc_sel_no_xept_T_5 = io_dat_br_eq ? 3'h1 : 3'h0; // @[cpath.scala 123:62]
  wire [2:0] _ctrl_pc_sel_no_xept_T_8 = ~io_dat_br_lt ? 3'h1 : 3'h0; // @[cpath.scala 124:62]
  wire [2:0] _ctrl_pc_sel_no_xept_T_11 = ~io_dat_br_ltu ? 3'h1 : 3'h0; // @[cpath.scala 125:62]
  wire [2:0] _ctrl_pc_sel_no_xept_T_13 = io_dat_br_lt ? 3'h1 : 3'h0; // @[cpath.scala 126:62]
  wire [2:0] _ctrl_pc_sel_no_xept_T_15 = io_dat_br_ltu ? 3'h1 : 3'h0; // @[cpath.scala 127:62]
  wire [2:0] _ctrl_pc_sel_no_xept_T_18 = cs_br_type == 4'h8 ? 3'h3 : 3'h0; // @[cpath.scala 129:34]
  wire [2:0] _ctrl_pc_sel_no_xept_T_19 = cs_br_type == 4'h7 ? 3'h2 : _ctrl_pc_sel_no_xept_T_18; // @[cpath.scala 128:34]
  wire [2:0] _ctrl_pc_sel_no_xept_T_20 = cs_br_type == 4'h6 ? _ctrl_pc_sel_no_xept_T_15 : _ctrl_pc_sel_no_xept_T_19; // @[cpath.scala 127:34]
  wire [2:0] _ctrl_pc_sel_no_xept_T_21 = cs_br_type == 4'h5 ? _ctrl_pc_sel_no_xept_T_13 : _ctrl_pc_sel_no_xept_T_20; // @[cpath.scala 126:34]
  wire [2:0] _ctrl_pc_sel_no_xept_T_22 = cs_br_type == 4'h4 ? _ctrl_pc_sel_no_xept_T_11 : _ctrl_pc_sel_no_xept_T_21; // @[cpath.scala 125:34]
  wire [2:0] _ctrl_pc_sel_no_xept_T_23 = cs_br_type == 4'h3 ? _ctrl_pc_sel_no_xept_T_8 : _ctrl_pc_sel_no_xept_T_22; // @[cpath.scala 124:34]
  wire [2:0] _ctrl_pc_sel_no_xept_T_24 = cs_br_type == 4'h2 ? _ctrl_pc_sel_no_xept_T_5 : _ctrl_pc_sel_no_xept_T_23; // @[cpath.scala 123:34]
  wire [2:0] _ctrl_pc_sel_no_xept_T_25 = cs_br_type == 4'h1 ? _ctrl_pc_sel_no_xept_T_3 : _ctrl_pc_sel_no_xept_T_24; // @[cpath.scala 122:34]
  wire [2:0] _ctrl_pc_sel_no_xept_T_26 = cs_br_type == 4'h0 ? 3'h0 : _ctrl_pc_sel_no_xept_T_25; // @[cpath.scala 121:34]
  wire [2:0] ctrl_pc_sel_no_xept = io_dat_csr_interrupt ? 3'h4 : _ctrl_pc_sel_no_xept_T_26; // @[cpath.scala 120:34]
  reg  reg_mem_en; // @[cpath.scala 135:28]
  wire  _GEN_0 = io_imem_resp_valid ? cs0_3 : reg_mem_en; // @[cpath.scala 138:37 139:18 135:28]
  wire [2:0] _misaligned_mask_T_1 = cs0_5 - 3'h1; // @[cpath.scala 176:49]
  wire [5:0] _misaligned_mask_T_3 = 6'h7 << _misaligned_mask_T_1[1:0]; // @[cpath.scala 176:34]
  wire [5:0] _misaligned_mask_T_4 = ~_misaligned_mask_T_3; // @[cpath.scala 176:23]
  wire [2:0] misaligned_mask = _misaligned_mask_T_4[2:0]; // @[cpath.scala 175:30 176:20]
  wire [2:0] _data_misaligned_T = misaligned_mask & io_dat_mem_address_low; // @[cpath.scala 177:40]
  wire  data_misaligned = |_data_misaligned_T & _GEN_0; // @[cpath.scala 177:70]
  wire  stall = io_dat_imiss | io_ctl_dmiss; // @[cpath.scala 145:30]
  wire [4:0] rs1_addr = io_dat_inst[19:15]; // @[cpath.scala 158:30]
  wire  csr_ren = (cs0_6 == 3'h6 | cs0_6 == 3'h7) & rs1_addr == 5'h0; // @[cpath.scala 159:65]
  wire [2:0] csr_cmd = csr_ren ? 3'h2 : cs0_6; // @[cpath.scala 160:21]
  wire  illegal = ~cs_val_inst & io_imem_resp_valid; // @[cpath.scala 171:32]
  wire [2:0] _io_ctl_exception_cause_T = cs0_4 ? 3'h6 : 3'h4; // @[cpath.scala 185:34]
  wire [2:0] _io_ctl_exception_cause_T_1 = io_dat_inst_misaligned ? 3'h0 : _io_ctl_exception_cause_T; // @[cpath.scala 184:34]
  wire [2:0] _io_ctl_exception_cause_T_2 = illegal ? 3'h2 : _io_ctl_exception_cause_T_1; // @[cpath.scala 183:34]
  assign io_dmem_req_valid = _GEN_0 & ~io_ctl_exception; // @[cpath.scala 165:35]
  assign io_dmem_req_bits_fcn = _csignals_T_1 ? 1'h0 : _csignals_T_540; // @[Lookup.scala 34:39]
  assign io_dmem_req_bits_typ = _csignals_T_1 ? 3'h3 : _csignals_T_589; // @[Lookup.scala 34:39]
  assign io_ctl_stall = io_dat_imiss | io_ctl_dmiss; // @[cpath.scala 145:30]
  assign io_ctl_dmiss = ~(_GEN_0 & (io_dmem_resp_valid | data_misaligned) | ~_GEN_0); // @[cpath.scala 144:20]
  assign io_ctl_pc_sel = io_ctl_exception | io_dat_csr_eret ? 3'h4 : ctrl_pc_sel_no_xept; // @[cpath.scala 131:25]
  assign io_ctl_op1_sel = _csignals_T_1 ? 2'h0 : _csignals_T_246; // @[Lookup.scala 34:39]
  assign io_ctl_op2_sel = _csignals_T_1 ? 2'h1 : _csignals_T_295; // @[Lookup.scala 34:39]
  assign io_ctl_alu_fun = _csignals_T_1 ? 4'h1 : _csignals_T_344; // @[Lookup.scala 34:39]
  assign io_ctl_wb_sel = _csignals_T_1 ? 2'h1 : _csignals_T_393; // @[Lookup.scala 34:39]
  assign io_ctl_rf_wen = stall | io_ctl_exception ? 1'h0 : cs0_2; // @[cpath.scala 155:26]
  assign io_ctl_csr_cmd = stall ? 3'h0 : csr_cmd; // @[cpath.scala 162:26]
  assign io_ctl_exception = illegal | io_dat_inst_misaligned | data_misaligned; // @[cpath.scala 182:58]
  assign io_ctl_exception_cause = {{29'd0}, _io_ctl_exception_cause_T_2}; // @[cpath.scala 183:27]
  assign io_ctl_pc_sel_no_xept = io_dat_csr_interrupt ? 3'h4 : _ctrl_pc_sel_no_xept_T_26; // @[cpath.scala 120:34]
  always @(posedge clock) begin
    if (reset) begin // @[cpath.scala 135:28]
      reg_mem_en <= 1'h0; // @[cpath.scala 135:28]
    end else if (io_dmem_resp_valid) begin // @[cpath.scala 136:30]
      reg_mem_en <= 1'h0; // @[cpath.scala 137:18]
    end else if (io_imem_resp_valid) begin // @[cpath.scala 138:37]
      reg_mem_en <= cs0_3; // @[cpath.scala 139:18]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_mem_en = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule