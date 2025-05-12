// file: adder.sv
import "DPI-C" function int add(input int a, input int b);

module adder_top;
  reg [31:0] x, y, sum;

  initial begin
    x = 10;
    y = 20;
    sum = add(x, y);
    $display("%d + %d = %d", x, y, sum);
    $finish;
  end
endmodule
