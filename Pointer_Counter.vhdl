library ieee;
use ieee.std_logic_1164.all;

entity Pointer_Counter is
   port(clock, rw: in std_logic; 
			data_in: in std_logic_vector(15 downto 0);
			data_out: out std_logic_vector(15 downto 0));
end entity;

architecture struct of Pointer_Counter is	
	signal reg_data: std_logic_vector(15 downto 0):="0000000000000000";
	
	begin
	
	clk_proc: process(clock,data_in)
		begin
		if (rw='1') then
			if (clock'event and clock='1') then
				reg_data <= data_in;
			end if;
		end if;
	end process;
	
	data_out <= reg_data;
	
end struct;