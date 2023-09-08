module main_decoder(op,branch,regwrite,memwrite,resultsrc,alusrc,immsrc,aluop);


input [6:0]op;

output regwrite,memwrite,resultsrc,alusrc,branch;
output [1:0] immsrc,aluop;



assign regwrite =((op==7'b0000011)|(op==7'b0110011))?1'b1:1'b0;
assign memwrite=(op==7'b0100011)?1'b1:1'b0;
assign resultsrc=(op==7'b0000011)?1'b1:1'b0;
assign alusrc=((op==7'b0000011)|(op==7'b0100011))?1'b1:1'b0;
assign branch=(op==7'b1100011)?1'b1:1'b0;
assign immsrc=(op==7'b0100011)?2'b01:(op==7'b1100011)?2'b10:2'b00;
assign aluop=(op==7'b0110011)?2'b10:(op==7'b1100011)?2'b01:2'b00;


endmodule

/*module Main_Decoder(Op,RegWrite,ImmSrc,ALUSrc,MemWrite,ResultSrc,Branch,ALUOp);
    input [6:0]Op;
    output RegWrite,ALUSrc,MemWrite,ResultSrc,Branch;
    output [1:0]ImmSrc,ALUOp;

    assign RegWrite = (Op == 7'b0000011 | Op == 7'b0110011) ? 1'b1 :
                                                              1'b0 ;
    assign ImmSrc = (Op == 7'b0100011) ? 2'b01 : 
                    (Op == 7'b1100011) ? 2'b10 :    
                                         2'b00 ;
    assign ALUSrc = (Op == 7'b0000011 | Op == 7'b0100011) ? 1'b1 :
                                                            1'b0 ;
    assign MemWrite = (Op == 7'b0100011) ? 1'b1 :
                                           1'b0 ;
    assign ResultSrc = (Op == 7'b0000011) ? 1'b1 :
                                            1'b0 ;
    assign Branch = (Op == 7'b1100011) ? 1'b1 :
                                         1'b0 ;
    assign ALUOp = (Op == 7'b0110011) ? 2'b10 :
                   (Op == 7'b1100011) ? 2'b01 :
                                        2'b00 ;

endmodule*/
