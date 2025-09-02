module imem #(
    parameter COL = 32,          
    parameter ROW = 256          
)(
    input  [31:0] pc,   // read address   
    output [31:0] ins   // instruction
);

    // Bộ nhớ ins
    reg [COL-1:0] memory [0:ROW-1];

    initial begin
        $readmemb("imem_data.bin", memory);
    end

    assign ins = memory[pc[31:2]];
endmodule
