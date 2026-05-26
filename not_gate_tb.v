//testbench for notgate
module testbench;
  reg a;
  wire y;
  not_gate uut(.a(a),.y(y));
  initial begin
    $monitor("a=%b,y=%b",a,y);
    $dumpfile("dump.vcd");
    $dumpvars(0,testbench);
    a=0;#10;
    a=1;#10;
  end
endmodule
