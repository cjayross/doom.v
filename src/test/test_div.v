module test ();

wire error;
wire [15:0] result;
reg signed [15:0] A,B;

div div_test (result, error, A, B);
initial begin
  A <= 100;
  B <= 2;
  #10
  A <= 8;
  B <= 4;
  #10;
  A <= 10;
  B <= 0;
  #10;
end

initial begin
  $monitor("div: divisor = %5d, dividend =  %5d => %5d, %1b", A, B, result, error);
end

endmodule
