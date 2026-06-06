// 4:1 mux using behavior modeling
module mux_4to1(input s0,s1,i0,i1,i2,i3,output reg y);
  always@(*)begin
    y =
(
(((~s0)&(~s1))&i0) |
((( s0)&(~s1))&i1) |
(((~s0)&( s1))&i2) |
((( s0)&( s1))&i3)
);
  end
endmodule
