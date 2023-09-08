module sign_extend(in,imm_ext,immsrc);

input [31:0] in;
input immsrc;
output [31:0] imm_ext;


assign imm_ext=(immsrc==1'b1)?({{20{in[31]}},in[31:25],in[11:7]}):
                              ({{20{in[31]}},in[31:20]});

endmodule



/*module Sign_Extend (In,Imm_Ext,ImmSrc);

    input [31:0]In;
    input ImmSrc;
    output [31:0]Imm_Ext;

    assign Imm_Ext = (ImmSrc == 1'b1) ? ({{20{In[31]}},In[31:25],In[11:7]}):
                                        {{20{In[31]}},In[31:20]};
                                
endmodule*/


