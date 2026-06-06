// 2:1 mux using behavior modeling
module mux_2to1(input s0,i0,i1,output reg y);
  always@(*)begin
    y=((~s0)&i0)|(s0&i1);
  end
endmodule
