// 4:1 mux using gatelevel modeling
module mux_4to1(input s0,s1,i0,i1,i2,i3,output y);
  wire s0_bar,s1_bar,w1,w2,w3,w4,w5;
  not n1(s0_bar,s0);
  not n2(s1_bar,s1);
  and a1(w1,s0_bar,s1_bar,i0);
  and a2(w2,s0_bar,s1,i0);
  and a3(w3,s0,s1_bar,i1);
  and a4(w4,s0,s1,i1);
  or o1(w5,w1,w2,w3);
  or o2(y,w5,w4);
endmodule
