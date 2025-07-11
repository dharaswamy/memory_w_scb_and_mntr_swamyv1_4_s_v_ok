 
// Eda link :  https://edaplayground.com/x/E3Je

// ( swamy ) please copy the code but don't change/modify the code here.

//======================================================================================
//project Nam : memory model sv based.
// Note : eda link name changed from memory_ with scb& mntr_swamyv1.4.s(v_ok).sv(6) to memory_w_scb_and_mntr_swamyv1_4_s_v_ok.sv
//======================================================================================

`include "interface.sv"
//`include "default_test.sv"
`include "randomtest.sv"


module tb_top;
 bit clk ,rst; 
bus org(clk ,rst);
   
 initial
   begin
forever
  begin
  #5;
  clk=~clk;
  end
   end
   
initial begin
clk=1;
  rst=1;
  #5;
  rst=0;
end

//for the reset operation in b/w the write and read operation
/*initial begin
fork 
begin
#50; rst=1;
end
begin
#52; rst=0;
end
begin
#54;rst=1;
end
begin
#56; rst=0;
end
begin
#90; rst=1;
end
begin
#92; rst=0;
end
begin
#100; rst=1;
end
begin
#102; rst=0;
end
begin
#106; rst=1;
end
begin
#108; rst=0;
end
begin
#180; rst=1;
end
begin
#182; rst=0;
end
begin
#200; rst=1;
end
begin
#202; rst=0;
end
join_none
  end */
  
    
  
  //default_values q2(org);
  
   test t1(org);
  memory  q3(org);
   
   
    initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
   
endmodule
   
    
    
    
        
        
        
  
  