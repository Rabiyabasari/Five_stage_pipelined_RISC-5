
module fetch_cycle(clk,rst,pcsrce,pctargete,instrd,pcd,pcplus4d);

input clk,rst;
input pcsrce;
input [31:0] pctargete;

output [31:0] instrd;
output [31:0] pcd,pcplus4d;

wire [31:0] pc_f,pcf,pcplus4f;
wire [31:0] instrf;

reg [31:0] instrf_reg;
reg [31:0] pcf_reg,pcplus4f_reg;

mux pc_mux(.a(pcplus4f),.b(pctargete),.s(pcsrce),.c(pc_f));

p_c p_c(.pc_next(pc_f),.pc(pcf),.rst(rst),.clk(clk));

instr_mem instr_mem(.a(pcf),.rd(instrf),.rst(rst));

pc_adder pc_adder(.a(pcf),.b(32'h00000004),.c(pcplus4f));

always @ (posedge clk or posedge rst)
begin

if(rst==1'b1)
begin
instrf_reg<=32'h00000000;
pcf_reg<=32'h00000000;
pcplus4f_reg<=32'h00000000;
end

else
begin
instrf_reg<=instrf;
pcf_reg<=pcf;
pcplus4f_reg<=pcplus4f;
end

end

assign instrd=(rst==1'b1)?32'h00000000:instrf_reg;
assign pcd=(rst==1'b1)?32'h00000000:pcf_reg;
assign pcplus4d=(rst==1'b1)?32'h00000000:pcplus4f_reg;

endmodule


