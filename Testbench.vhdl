library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Testbench is
end entity;

architecture Struct of Testbench is
    component CPU is
	 port(Clk, reset: in std_logic;
			pc: out std_logic_vector(15 downto 0);
			rf_final:out std_logic_vector(15 downto 0);
			mem_final:out std_logic_vector(15 downto 0);
			state_final: out integer);
			--rf_final0, rf_final1, rf_final2, rf_final3, rf_final4, rf_final5, rf_final6: out std_logic_vector(15 downto 0));
    end component;

    signal Clk, reset: std_logic:='0';
	 signal pc: std_logic_vector(15 downto 0);
	 signal rf_final: std_logic_vector(15 downto 0);
	 signal mem_final:std_logic_vector(15 downto 0);
	 signal state_final: integer;
	 --signal rf_final0, rf_final1, rf_final2, rf_final3, rf_final4, rf_final5, rf_final6: std_logic_vector(15 downto 0);

begin
    DUT: CPU port map (Clk, reset, pc,rf_final,mem_final, state_final);
	 --,state_final,rf_final0, rf_final1, rf_final2, rf_final3, rf_final4, rf_final5, rf_final6);

		 reset <= '0';
	 Clk<= not Clk after 100 ns;

end architecture Struct;