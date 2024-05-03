library ieee;
use ieee.std_logic_1164.all;

entity reg_file is
	port(rf_A1,rf_A2,rf_A3: in std_logic_vector(2 downto 0);
			rf_D3, pc: in std_logic_vector(15 downto 0);
			rw, Clk: in std_logic;
			rf_D1,rf_D2: out std_logic_vector(15 downto 0);
			rf_all0, rf_all1, rf_all2, rf_all3, rf_all4, rf_all5, rf_all6: out std_logic_vector(15 downto 0));
end entity;

			
architecture struct of reg_file is

	
	signal r0: std_logic_vector(15 downto 0):="1111111111111111";
	
	signal r1: std_logic_vector(15 downto 0):="0000000000000011";
	
	signal r2,r3,r4,r5,r6: std_logic_vector(15 downto 0):="0000000000000000";
	
	component mux8_1_16 is 
		port( A,B,C,D,E,F,G,H: in std_logic_vector(15 downto 0);sel_0,sel_1,sel_2 : in std_logic; Y: out std_logic_vector(15 downto 0));
	end component;

	begin
	
	write_process: process(clk, rf_A1, rf_A2, rf_A3, rf_D3, rw)
	begin
		if (rw='1') then
			if (Clk'event and Clk='1') then
				case rf_A3 is
					when "000" =>
						r0 <= rf_D3;
					when "001" =>
						r1 <= rf_D3;
					when "010" =>
						r2 <= rf_D3;
					when "011" =>
						r3 <= rf_D3;
					when "100" =>
						r4 <= rf_D3;
					when "101" =>
						r5 <= rf_D3;
					when "110" =>
						r6 <= rf_D3;
					when others =>
				end case;
			end if;
		end if;
	end process write_process;
	
	mux1: mux8_1_16 port map (r0,r1,r2,r3,r4,r5,r6,pc,rf_A1(0),rf_A1(1),rf_A1(2),rf_D1);
	mux2: mux8_1_16 port map (r0,r1,r2,r3,r4,r5,r6,pc,rf_A2(0),rf_A2(1),rf_A2(2),rf_D2);
	
	rf_all0 <= r0;
	rf_all1 <= r1;
	rf_all2 <= r2;
	rf_all3 <= r3;
	rf_all4 <= r4;
	rf_all5 <= r5;
	rf_all6 <= r6;
end struct;