1.WIRE DEC
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 	
    wire int1,int2;    
    assign int1 = a&b;
    assign int2 = c&d;
    assign out = int1|int2;
    assign out_n = ~out;
    
endmodule

2. 7458 CHIP 
module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );	
  assign p1y=(p1a&p1b&p1c) |(p1d&p1e&p1f);
  assign p2y=(p2a&p2b)|(p2c&p2d);
    endmodule
