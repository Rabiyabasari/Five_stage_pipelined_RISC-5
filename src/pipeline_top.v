`include "fetch_cycle.v"
`include "decode_cycle.v"
`include "execute_cycle.v"
`include "memory_cycle.v"
`include "writeback_cycle.v"  

`include "p_c.v"
`include "pc_adder.v"
`include "mux.v"
`include "instr_mem.v"
`include "control_unit_top.v"
`include "register_file.v"
`include "sign_extend.v"
`include "ALU.v"
`include "data_mem.v"  



module pipeline_top(clk, rst);

    // declaration of i/o
    input clk, rst;

    // declaration of interim wires
    wire pcsrce, regwritew, regwritee, alusrce, memwritee, resultsrce, branche, regwritem, memwritem, resultsrcm, resultsrcw;
    wire [2:0] alucontrole;
    wire [4:0] rd_e, rd_m, rdw;
    wire [31:0] pctargete, instrd, pcd, pcplus4d, resultw, rd1_e, rd2_e, imm_ext_e, pce, pcplus4e, pcplus4m, writedatam, alu_resultm;
    wire [31:0] pcplus4w, alu_resultw, readdataw;
    wire [4:0] rs1_e, rs2_e;
    wire [1:0] forwardbe, forwardae;
    

    // module initiation
    // fetch stage
    fetch_cycle fetch (
                        .clk(clk), 
                        .rst(rst), 
                        .pcsrce(pcsrce), 
                        .pctargete(pctargete), 
                        .instrd(instrd), 
                        .pcd(pcd), 
                        .pcplus4d(pcplus4d)
                    );

    // decode stage
    decode_cycle decode (
                        .clk(clk), 
                        .rst(rst), 
                        .instrd(instrd), 
                        .pcd(pcd), 
                        .pcplus4d(pcplus4d), 
                        .regwritew(regwritew), 
                        .rdw(rdw), 
                        .resultw(resultw), 
                        .regwritee(regwritee), 
                        .alusrce(alusrce), 
                        .memwritee(memwritee), 
                        .resultsrce(resultsrce),
                        .branche(branche),  
                        .alucontrole(alucontrole), 
                        .rd1_e(rd1_e), 
                        .rd2_e(rd2_e), 
                        .imm_ext_e(imm_ext_e), 
                        .rd_e(rd_e), 
                        .pce(pce), 
                        .pcplus4e(pcplus4e),
                        .rs1_e(rs1_e),
                        .rs2_e(rs2_e)
                    );

    // execute stage
    execute_cycle execute (
                        .clk(clk), 
                        .rst(rst), 
                        .regwritee(regwritee), 
                        .alusrce(alusrce), 
                        .memwritee(memwritee), 
                        .resultsrce(resultsrce), 
                        .branche(branche), 
                        .alucontrole(alucontrole), 
                        .rd1_e(rd1_e), 
                        .rd2_e(rd2_e), 
                        .imm_ext_e(imm_ext_e), 
                        .rd_e(rd_e), 
                        .pce(pce), 
                        .pcplus4e(pcplus4e), 
                        .pcsrce(pcsrce), 
                        .pctargete(pctargete), 
                        .regwritem(regwritem), 
                        .memwritem(memwritem), 
                        .resultsrcm(resultsrcm), 
                        .rd_m(rd_m), 
                        .pcplus4m(pcplus4m), 
                        .writedatam(writedatam), 
                        .alu_resultm(alu_resultm),
                        .resultw(resultw)
                        .forwarda_e(forwardae),
                        .forwardb_e(forwardbe)
                    );
    
    // memory stage
    memory_cycle memory (
                        .clk(clk), 
                        .rst(rst), 
                        .regwritem(regwritem), 
                        .memwritem(memwritem), 
                        .resultsrcm(resultsrcm), 
                        .rd_m(rd_m), 
                        .pcplus4m(pcplus4m), 
                        .writedatam(writedatam), 
                        .alu_resultm(alu_resultm), 
                        .regwritew(regwritew), 
                        .resultsrcw(resultsrcw), 
                        .rd_w(rdw), 
                        .pcplus4w(pcplus4w), 
                        .alu_resultw(alu_resultw), 
                        .readdataw(readdataw)
                    );

    // write back stage
    writeback_cycle writeback (
                        .clk(clk), 
                        .rst(rst), 
                        .resultsrcw(resultsrcw), 
                        .pcplus4w(pcplus4w), 
                        .alu_resultw(alu_resultw), 
                        .readdataw(readdataw), 
                        .resultw(resultw)
                    );

    // hazard unit
    hazard_unit forwarding_block (
                        .rst(rst), 
                        .regwritem(regwritem), 
                        .regwritew(regwritew), 
                        .rd_m(rd_m), 
                        .rd_w(rdw), 
                        .rs1_e(rs1_e), 
                        .rs2_e(rs2_e), 
                        .forwardae(forwardae), 
                        .forwardbe(forwardbe)
                        );
endmodule



