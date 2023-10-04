module tb;
 
 
integer i = 0;
 
reg clk = 0,sys_rst = 0;
reg [15:0] din = 0;
reg [32:0] IR;
wire [15:0] dout;
 
 
top dut(clk, sys_rst, din, dout);
 
always #5 clk = ~clk;
 
initial begin
IR = 32'b00001_00000_00000_1_0000_0000_0000_0101;
sys_rst = 1'b1;
#10
sys_rst = 1'b0;
#800;
$stop;
end
 
endmodule