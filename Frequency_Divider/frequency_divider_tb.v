module frequency_divider_tb;
    reg clk_in;
    reg rst;
    wire clk_out;
    frequency_divider uut (
        .clk_in(clk_in),
        .rst(rst),
        .clk_out(clk_out)
    );
    initial begin
        clk_in = 0;
        forever #10 clk_in = ~clk_in;
    end
    initial begin
        rst = 1;        
        #25 rst = 0;    
        #1000 $finish;
    end
    initial begin
        $monitor("Time=%0t | clk_in=%b | rst=%b | clk_out=%b", $time, clk_in, rst, clk_out);
    end
endmodule
