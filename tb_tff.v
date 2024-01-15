`timescale 1ns/1ns
`include "Tflipflop.v"

module tb_TFF();
    reg clk, reset,t;
    wire q;

    TFF tff0(clk,reset,t,q);

    
    initial begin
        clk=0;
        forever #10 clk = ~clk;  
    end 


    initial begin
        reset = 1;
        t = 1;
        #100;

        reset = 1;
        t = 0;
        #100;

        reset= 0;
        t = 0;
        #100;

        reset=0;
        t = 1;
        #100;
     
    end
    
endmodule

