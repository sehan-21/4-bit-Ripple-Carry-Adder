`timescale 1ns / 1ps
module ripple_addtb;
       reg [3:0]a,b;
       reg cin;
       wire [3:0]sum;
       wire cout;
       ripple_adder uut(
          .a(a),
          .b(b),
          .cin(cin),
          .sum(sum),
          .cout(cout)
       );
       integer i;
       initial begin
         for(i=0;i<512;i=i+1)begin
           {a,b,cin}=i;
           #10;
           $display("%b %b %b | %b %b",a,b,cin,sum,cout);
         end  
         #10;
       $finish;
       end        
endmodule
