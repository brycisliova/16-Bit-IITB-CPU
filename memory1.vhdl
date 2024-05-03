library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;	 

entity memory1 is 
	port (add,data_in: in std_logic_vector(15 downto 0); 
			clock,rw: in std_logic;
			data_out: out std_logic_vector(15 downto 0));
end entity;

architecture struct of memory1 is 

	type array1 is array(31 downto 0) of std_logic_vector(15 downto 0);

	signal memory: array1:=(
		0 =>  "0000000001010000",
		1 =>  "0010000001010000",
		2 =>  "0011000001010000",
		3 =>  "0001000001000100",
		4 =>  "0100000000010000",
		5 =>  "0101010001000000",
		6 =>  "0110000001010000",
		7 =>  "1000000000000111",
		8 =>  "1001000000000100",
		9 =>  "1010000110001110",
		14=>  "0000000000000000",
		15 => "1100100110000010",
		18 => "1111000001000000",
		27 => "1101000000000011",
		30 => "1011000001000101",
		others => x"0000");

	begin
	
	data_out <= memory(to_integer(unsigned(add)));
	
	mem_write: process (rw,data_in,add,clock)
		begin
		if(rw = '1') then
			if(rising_edge(clock)) then
				memory(to_integer(unsigned(add))) <= data_in;
			end if;
		end if;
	end process;
	
end struct;
