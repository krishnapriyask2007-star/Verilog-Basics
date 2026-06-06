// 2:1 mux using gatelevel modeling
module mux_2to1(input s0,i0,i1,output y);
  wire s0_bar,w1,w2;
  not n1(s0_bar,s0);
  and a1(w1,i1,s0);
  and a2(w2,i0,s0_bar);
  or o1(y,w1,w2);
endmodule
