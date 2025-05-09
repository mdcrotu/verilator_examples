module top;
    
initial begin
  fork
    // Thread 1
    begin
      #10;
      $display("Thread 1 finished");
    end
    // Thread 2
    begin
      #20;
      $display("Thread 2 finished");
    end
  join_none
  $display("Parent thread continues execution");
end

endmodule
