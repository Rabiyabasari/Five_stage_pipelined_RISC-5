module writeback_cycle(clk,rst,resultsrcw,alu_resultw,readdataw,pcplus4w,resultw);

input clk,rst,resultsrcw;
input [31:0] alu_resultw,readdataw,pcplus4w;
output [31:0] resultw;

mux mux(.a(alu_resultw),.b(readdataw),.s(resultsrcw),.c(resultw));

endmodule