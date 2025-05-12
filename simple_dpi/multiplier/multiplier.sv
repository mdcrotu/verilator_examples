// SystemVerilog module
module multiplier (input logic signed [31:0] a, input logic signed [31:0] b, output logic signed [31:0] result);

  import "DPI-C" function int multiply(input int a, input int b);

  always_ff @(posedge clk) begin
    if (rst) begin
      result <= 0;
    end else begin
      result <= multiply(a, b);
    end
  end

  parameter int clk_tgl_period = 5;
  parameter timeout = 500;    
  reg clk;
  reg rst;
  initial begin 
            clk = 0;
            rst = 1;
            #(timeout) $finish;
  end
  always #(clk_tgl_period) clk = ~clk;

        
//  reg [31:0] x, y, product;

//  initial begin
//    x = 10;
//    y = 20;
//    product = multiply(x, y);
//    $display("%d * %d = %d", x, y, product);
//    $finish;  
//  end
  
endmodule
