
 module full_adder_test();
  reg a,b,cin;
  wire sum,carry;
  full_adder h1(sum,carry,a,b,cin);
  initial 
  begin
  a=0;b=0;cin=0;
  #10 a=0;b=0;cin=1;
  #10 a=0;b=1;cin=0;
  #10 a=0;b=1;cin=0;
  #10 a=0;b=1;cin=1;
  #10 a=1;b=0;cin=0;
  #10 a=1;b=0;cin=1;
  #10 a=1;b=1;cin=0;
  #10 a=1;b=1;cin=1;
     end
initial
$monitor($time,"a=%b,b=%b,cin=%b,sum=%b,carry=%b\n",a,b,cin,sum,carry);
endmodule
