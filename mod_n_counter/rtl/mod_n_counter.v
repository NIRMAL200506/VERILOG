module mod_n_counter #(
    parameter N = 10 
)(
    input clk,          
    input reset,       
    output reg [$clog2(N)-1:0] count );

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 0; 
        end else begin
            if (count == N-1) begin
                count <= 0; 
            end else begin
                count <= count + 1; 
            end
        end
    end

endmodule
