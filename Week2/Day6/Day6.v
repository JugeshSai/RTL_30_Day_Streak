D ff:
module top_module (
    input clk,    
    input d,
    output reg q );
    always@(posedge clk)
        q=d;

endmodule

D ff8:
module top_module (
    input clk,
    input [7:0] d,
    output [7:0] q
);
    always@(posedge clk)
        q=d;

endmodule

D ff8r:
module top_module (
    input clk,
    input reset,
    input [7:0] d,
    output [7:0] q
);
    always@(negedge clk)
        if(!reset)
            q=d;
    else
        q=0;
endmodule

D FF 8p:
module top_module (
    input clk,
    input reset,
    input [7:0] d,
    output [7:0] q
);
    parameter reset1=8'h34;//we need to define Ox34 as 8h34 as we need it in bit with hexadecimal binary val
    always@(negedge clk)
        if(!reset)
            q=d;
    else
        q=reset1;
endmodule

D ff8ar:
module top_module (
    input clk,
    input areset,   // active high asynchronous reset
    input [7:0] d,
    output [7:0] q
);
    always@(posedge clk or posedge areset)   /*When reset is high, the flip-flop output Q is set to 0 immediately, 
        regardless of the clock signal (clk). This allows the flip-flop to reset without waiting for a clock edge.*/
        if(areset)
            q=0;
    else
        q=d;

endmodule
