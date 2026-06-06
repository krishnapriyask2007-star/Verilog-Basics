//full adder using gatelevel modeling
module full_adder(input a,b,cin,output sum,carry);
  wire w1,w2,w3,w4,w5;
  xor x1(w1,b,c);
  xor x2(sum,w1,a);
  and a1(w2,a,b);
  and a2(w3,b,cin);
  and a3(w4,a,cin);
  or o1(w5,w2,w3);
  or o2(carry,w5,w4);
endmodule
