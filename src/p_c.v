module p_c(pc_next,pc,rst,clk);

input [31:0] pc_next;
input rst,clk;

output reg [31:0] pc;

always @(posedge clk)
begin

if(rst==1'b0)
begin
pc<=32'h00000000;
end

else
begin
pc<=pc_next;
end

end

endmodule


/*module PC_Module(clk,rst,PC,PC_Next);
    input clk,rst;
    input [31:0]PC_Next;
    output [31:0]PC;
    reg [31:0]PC;

    always @(posedge clk)
    begin
        if(~rst)
            PC <= {32{1'b0}};
        else
            PC <= PC_Next;
    end
endmodule*/

