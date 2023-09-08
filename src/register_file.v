module reg_file(a1,a2,a3,wd3,we3,clk,rst,rd1,rd2);

input [4:0] a1,a2,a3;
input [31:0] wd3;
input we3,clk,rst;

output [31:0] rd1,rd2;

reg [31:0] registers [31:0];

assign rd1=(~rst)?32'h00000000:registers[a1];
assign rd2=(~rst)?32'h00000000:registers[a2];

always @(posedge clk)
begin

if(we3)
begin
registers[a3]<=wd3;
end

end 

initial 
begin
//registers[9]=32'h00000020;
//registers[6]=32'h00000040;

//registers[11]=32'h00000028;
//registers[12]=32'h00000030;

//registers[5]=32'h00000006;
//registers[6]=32'h0000000A;

registers[5]=32'h00000005;
registers[4]=32'h00000004;



end

endmodule

/*module Register_File(clk,rst,WE3,WD3,A1,A2,A3,RD1,RD2);

    input clk,rst,WE3;
    input [4:0]A1,A2,A3;
    input [31:0]WD3;
    output [31:0]RD1,RD2;

    reg [31:0] Register [31:0];

    always @ (posedge clk)
    begin
        if(WE3)
            Register[A3] <= WD3;
    end

    assign RD1 = (~rst) ? 32'd0 : Register[A1];
    assign RD2 = (~rst) ? 32'd0 : Register[A2];

    initial begin
        Register[5] = 32'h00000005;
        Register[6] = 32'h00000004;
        
    end

endmodule*/

