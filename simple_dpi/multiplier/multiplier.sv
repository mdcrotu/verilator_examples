// SystemVerilog module
module multiplier;

  import "DPI-C" function int multiply(input int a, input int b);

  parameter int clk_tgl_period = 5;
  parameter timeout = 10;    
  reg clk;
  reg rst;
  logic signed [31:0] a;
  logic signed [31:0] b;
  reg signed [31:0] result;

  initial begin 
    clk = 0;
    rst = 0;

    for (int i = 0; i < 1000; i++) begin
      a = i;
      b = i * 5;
      #10;
    end

    #(timeout) $finish;
  end

always_ff @(posedge clk) begin
    if (rst) begin
      result <= 0;
    end else begin
      result <= multiply(a, b);
    end
  end

// Clock
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
