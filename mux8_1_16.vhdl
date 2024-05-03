library ieee;
use ieee.std_logic_1164.all;

entity mux8_1_16 is 
 port( A,B,C,D,E,F,G,H: in std_logic_vector(15 downto 0);sel_0,sel_1,sel_2 : in std_logic; Y: out std_logic_vector(15 downto 0));
end entity;

architecture struct of mux8_1_16 is 
 component mux8_to_1 is 
	  port( 
		 A,B,C,D,E,F,G,H,sel_0,sel_1,sel_2: in std_logic;Y: out std_logic);
 end component;

 
 
begin 
 
 gen: for i in 0 to 15 generate
  mux: mux8_to_1
   port map( A => A(i), B => B(i),C => C(i),D => D(i),E => E(i),F => F(i),G => G(i),H => H(i), sel_0 => sel_0,sel_1 => sel_1,sel_2 => sel_2, Y => Y(i));
 end generate;	

end struct;  