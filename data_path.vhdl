library ieee;
use ieee.std_logic_1164.all;

entity data_path is
    port(state : in integer;alu_z: in std_logic; mem1,mem2,mem3,mem4,mem5,mem6,mem7,mem8,mem9,mem10,mem11,mem12,pc_w,memw,ir_w,rf_w,t1_w,t2_w,t3_w : out std_logic);
end entity;

architecture struct of data_path is
    signal mem1_var, mem2_var, mem3_var, mem4_var, mem5_var, mem6_var, mem7_var, mem8_var, mem9_var, mem10_var, mem11_var, mem12_var,pc_w_var, memw_var, ir_w_var, rf_w_var, t1_w_var, t2_w_var, t3_w_var: std_logic;


    begin 
        process(state)
        begin
		  
			 -- Initialize all signals to '0'
			 mem1_var    <= '0';
			 mem2_var    <= '0';
			 mem3_var    <= '0';
			 mem4_var    <= '0';
			 mem5_var    <= '0';
			 mem6_var    <= '0';
			 mem7_var    <= '0';
			 mem8_var    <= '0';
			 mem9_var    <= '0';
			 mem10_var   <= '0';
			 mem11_var   <= '0';
			 mem12_var   <= '0';
			 pc_w_var  <= '0';
			 memw_var    <= '0';
			 ir_w_var  <= '0';
			 rf_w_var  <= '0';
			 t1_w_var  <= '0';
			 t2_w_var  <= '0';
			 t3_w_var  <= '0';
			 
			  case state is 

					when 0 => 
						 ir_w_var <= '1';

					when 1 =>
						 mem12_var <= '1';
						 pc_w_var <= '1';

					when 2 =>
						 t1_w_var <= '1';
						 t2_w_var <= '1';

					when 3 =>
						 mem8_var <= '1';
						 mem10_var <= '1';
						 t3_w_var <= '1';

					when 4 =>
						 mem4_var <= '1';
						 rf_w_var <= '1';
						 ir_w_var <= '1';

					when 5 =>
						 mem8_var <= '1';
						 mem10_var <= '1';
						 t3_w_var <= '1';

					when 6 =>
						 mem8_var <= '1';
						 mem10_var <= '1';
						 t3_w_var <= '1';

					when 7 =>
						 mem8_var <= '1';
						 mem9_var <= '1';
						 t3_w_var <= '1';

					when 8 =>
						 mem3_var <= '1';
						 rf_w_var <= '1';
						 ir_w_var <= '1';

					when 9 =>
						 mem8_var <= '1';
						 mem10_var <= '1';
						 t3_w_var <= '1';

					when 10 =>
						 mem8_var <= '1';
						 mem10_var <= '1';
						 t3_w_var <= '1';

					when 11 =>
						 mem8_var <= '1';
						 mem10_var <= '1';
						 t3_w_var <= '1';

					when 12 =>
						 mem6_var <= '1';
						 rf_w_var <= '1';
						 ir_w_var <= '1';

					when 13 =>
						 mem5_var <= '1';
						 rf_w_var <= '1';
						 ir_w_var <= '1';

					when 14 =>
						 mem7_var <= '1';
						 mem8_var <= '1';
						 mem9_var <= '1';
						 t3_w_var <= '1';

					when 15 =>
						 mem2_var <= '1';
						 mem11_var <= '1';
						 t3_w_var<= '1';

					when 16 =>
						 mem2_var <= '1';
						 memw_var <= '1';
						 ir_w_var <= '1';

					when 17 =>
						 mem8_var <= '1';
						 mem10_var <= '1';
						 t3_w_var <= '1';

					when 18 =>
						 mem9_var <= '1';
						 pc_w_var <= '1';
						 mem12_var <= alu_z;
						 ir_w_var <= '1';

					when 19 =>
						 mem5_var <= '1';
						 mem6_var <= '1';
						 rf_w_var <= '1';

					when 20 =>
						 mem9_var <= '1';
						 mem10_var <= '1';
						 mem12_var <= '1';
						 pc_w_var <= '1';
						 ir_w_var <= '1';

					when 21 =>
						 mem1_var <= '1';
						 pc_w_var <= '1';
						 ir_w_var <= '1';
					
					when 22 =>
						 rf_w_var <= '1';
						 ir_w_var <= '1';
					
					when others =>
						 mem1_var    <= '0';
						 mem2_var    <= '0';
						 mem3_var    <= '0';
						 mem4_var    <= '0';
						 mem5_var    <= '0';
						 mem6_var    <= '0';
						 mem7_var    <= '0';
						 mem8_var    <= '0';
						 mem9_var    <= '0';
						 mem10_var   <= '0';
						 pc_w_var  <= '0';
						 memw_var    <= '0';
						 ir_w_var  <= '0';
						 rf_w_var  <= '0';
						 t1_w_var  <= '0';
						 t2_w_var  <= '0';
						 t3_w_var  <= '0';
			  end case;

			  -- Assign the values to the output signals
		 end process;
		 
		 mem1 <= mem1_var;
		 mem2 <= mem2_var;
		 mem3 <= mem3_var;
		 mem4 <= mem4_var;
		 mem5 <= mem5_var;
		 mem6 <= mem6_var;
		 mem7 <= mem7_var;
		 mem8 <= mem8_var;
		 mem9 <= mem9_var;
		 mem10 <= mem10_var;
		 mem11 <=mem11_var;
		 mem12 <= mem12_var;
		 pc_w <= pc_w_var;
		 memw <= memw_var;
		 ir_w <= ir_w_var;
		 rf_w <= rf_w_var;
		 t1_w <= t1_w_var;
		 t2_w <= t2_w_var;
		 t3_w <= t3_w_var;
    
end struct;