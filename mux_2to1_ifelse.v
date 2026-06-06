// 2:1 MUX — if-else Method
module mux_2to1(input sel,a,b,output reg y);
  always@(*)begin
    if(sel==0)
      y=a;
    else
      y=b;
  end
endmodule
