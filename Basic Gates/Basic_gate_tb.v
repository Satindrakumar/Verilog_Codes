module basic_gate_tb;
reg a, b;
wire out_and, out_or, out_nand, out_nor, out_not, out_xor, out_xnor;
data_basicgates dut (.out_and(out_and),.out_or(out_or),.out_nand(out_nand),.out_nor(out_nor),.out_not(out_not),.out_xor(out_xor),.out_xnor(out_xnor),.a(a),.b(b));
  initial
    begin
      a=1'b0,b=1'b0;
      #10 a=1'b0,b=1'b1;
      #10 a=1'b1,b=1'b0;
      #10 a=1'b1,b=1'b1;
      #50 $finish;
    end
  always@(*)
    begin
      $display(" Inputs: a=%b b=%b Outputs: AND=%b OR=%b NOT=%b NOR=%b XOR=%b XNOR=%b XOR=%b",a,b, out_and, out_or, out_nand, out_nor, out_not, out_xor, out_xnor);
    end
endmodule
