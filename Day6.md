D ff:
module top_module (
    input clk,    
    input d,
    output reg q );

    always@(posedge clk)
        q=d;

endmodule
![WhatsApp Image 2024-09-07 at 22 37 30_d61e7621](https://github.com/user-attachments/assets/ddaf3ff2-1435-47f2-9341-50035bad001e)


D ff8:
module top_module (
    input clk,
    input [7:0] d,
    output [7:0] q
);
    always@(posedge clk)
        q=d;

endmodule
![WhatsApp Image 2024-09-07 at 22 54 39_3a3447ce](https://github.com/user-attachments/assets/d89ece4f-a0fe-431f-b6e7-a9dc8432537c)

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
![WhatsApp Image 2024-09-07 at 22 54 40_2c85dafb](https://github.com/user-attachments/assets/93e13275-8ba6-4ed6-9bc9-42bfe09219c4)


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
![WhatsApp Image 2024-09-07 at 22 54 40_32fe2b07](https://github.com/user-attachments/assets/0b1ef201-3d7b-423f-adb3-41e7939e3c53)


D ff8ar:
![image](https://github.com/user-attachments/assets/d7ab63d7-10b4-4893-b6a1-2915b21bf315)
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



