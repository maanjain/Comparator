`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2024 00:56:41
// Design Name: 
// Module Name: comparator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//greater A>b
//lesser b>a
module comp_1bit(input a, b , output equal , great , less);

xnor g1(equal,a,b);
and g2(great , a, ~b);
and g3(less,~a , b );




endmodule


module comp_2bit(input a,b,c,d , output E , G , L );

wire w1 , w2 , w3 , w4, w5 , w6;

 comp_1bit g1(a, b,w1 , w2 , w3);
 comp_1bit g2(c, d , w4, w5 , w6);
 
 xnor a1 (E ,w1 , w4 ) ;
 and a2(G , w2, ~w5);
 and a3(E,~w3 , w6 );
 
endmodule


module comparator(

    );
endmodule
