// testbench for 2:1 mux
module testbench;
  reg s0,i0,i1;
  wire y;
  mux_2to1 uut(.s0(s0),.i0(i0),.i1(i1),.y(y));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,testbench);
    $monitor("s0=%b,i0=%b,i1=%b,y=%b",s0,i0,i1,y);
    s0=0;i0=0;i1=1'bx;#10;
    s0=0;i0=1;i1=1'bx;#10;
    s0=1;i0=1'bx;i1=0;#10;
    s0=1;i0=1'bx;i1=1;#10;
  end
endmodule
