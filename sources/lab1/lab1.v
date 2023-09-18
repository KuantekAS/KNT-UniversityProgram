`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: lab1
//////////////////////////////////////////////////////////////////////////////////


module lab1(
    input [1:0] btn,
     output [3:0] led
    );
    
    assign led[0] = ~btn[0];
    assign led[1] = btn[0] & ~btn[1];
    assign led[3] = btn[0] & btn[1];
    assign led[2] = led[1] | led[3];
     
endmodule
