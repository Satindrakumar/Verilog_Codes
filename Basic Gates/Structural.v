module data_basicgates(output out_and,out_or,out_nand,out_nor,out_not,out_xor,out_xnor,
                       input a,b);
and  g1(out_and, a, b);
or   g2(out_or, a, b);
nand g3(out_nand, a, b);
nor  g4(out_nor, a, b);
not  g5(out_not, a);       
xor  g6(out_xor, a, b);
xnor g7(out_xnor, a, b);
endmodule
