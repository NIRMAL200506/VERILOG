module frequency_divider(
    input wire clk_in,   
    input wire rst,      
    output reg clk_out 
);

    
    parameter DIV_FACTOR = 2;
    reg [$clog2(DIV_FACTOR)-1:0] counter; 

    always @(posedge clk_in or posedge rst) begin
        if (rst) begin
            counter <= 0;        
            clk_out <= 0;        
        end else begin
            if (counter == DIV_FACTOR - 1) begin
                counter <= 0;    
                clk_out <= ~clk_out; 
            end else begin
                counter <= counter + 1;            
 end
        end
    end

endmodule
