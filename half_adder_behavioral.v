//half adder using behavior modeling
module half_adder(input a,b,output reg sum,reg carry);
  always@(*)begin
    sum=a^b;
    carry=a&b;
  end
endmodule
