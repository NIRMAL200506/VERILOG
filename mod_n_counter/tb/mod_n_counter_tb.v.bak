module mod_n_counter_tb;
    parameter N = 10;          
    reg clk;                  
    reg reset;                
    wire [$clog2(N)-1:0] count; 
    mod_n_counter #(.N(N)) uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        $monitor("Time=%0t | Reset=%b | Count=%d", $time, reset, count);
        reset = 1; #20;  // Reset the counter
        reset = 0;
        #100;
        $stop;
    end
endmodule
