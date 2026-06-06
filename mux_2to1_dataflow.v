// 2:1 mux using dataflow modeling
module mux_2to1(input s0,i0,i1,output y);
  assign y=((~s0)&i0)|(s0&i1);
endmodule
