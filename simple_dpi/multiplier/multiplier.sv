// SystemVerilog module
module multiplier (input logic clk, input logic rst, input logic signed [31:0] a, input logic signed [31:0] b, output logic signed [31:0] result);

  import "DPI-C" function int multiply(input int a, input int b);

//  always_ff @(posedge clk) begin
//    if (rst) begin
//      result <= 0;
//    end else begin
//      result <= multiply(a, b);
//    end
//  end

  reg [31:0] x, y, product;

  initial begin
    x = 10;
    y = 20;
    product = multiply(x, y);
    $display("%d * %d = %d", x, y, product);
    $finish;  
  end
  
endmodule
