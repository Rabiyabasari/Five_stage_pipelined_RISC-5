`include "alu_decoder.v"
`include "main_decoder.v"

module control_unit_top(op,regwrite,immsrc,alusrc,memwrite,resultsrc,branch,funct3,funct7,alucontrol);

    input [6:0]op,funct7;
    input [2:0]funct3;
    output regwrite,alusrc,memwrite,resultsrc,branch;
    output [1:0]immsrc;
    output [2:0]alucontrol;

    wire [1:0]aluOp;

    main_decoder main_decoder1(
                .op(op),
                .branch(branch),
                .regwrite(regwrite),
                .memwrite(memwrite), 
                .resultsrc(resultsrc),
                .alusrc(alusrc),
                .immsrc(immsrc),
                .aluop(aluop)
    );

    alu_decoder alu_decoder1(
                            .aluop(aluop),
                            .op(op),
                            .funct3(funct3),
                            .funct7(funct7),
                            .alucontrol(alucontrol)
    );

endmodule


/*`include "ALU_Decoder.v"
`include "Main_Decoder.v"

module Control_Unit_Top(Op,RegWrite,ImmSrc,ALUSrc,MemWrite,ResultSrc,Branch,funct3,funct7,ALUControl);

    input [6:0]Op,funct7;
    input [2:0]funct3;
    output RegWrite,ALUSrc,MemWrite,ResultSrc,Branch;
    output [1:0]ImmSrc;
    output [2:0]ALUControl;

    wire [1:0]ALUOp;

    Main_Decoder Main_Decoder(
                .Op(Op),
                .RegWrite(RegWrite),
                .ImmSrc(ImmSrc),
                .MemWrite(MemWrite),
                .ResultSrc(ResultSrc),
                .Branch(Branch),
                .ALUSrc(ALUSrc),
                .ALUOp(ALUOp)
    );

    ALU_Decoder ALU_Decoder(
                            .ALUOp(ALUOp),
                            .funct3(funct3),
                            .funct7(funct7),
                            .op(Op),
                            .ALUControl(ALUControl)
    );


endmodule*/
