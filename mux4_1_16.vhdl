library ieee;
use ieee.std_logic_1164.all;

entity mux4_1_16 is 
 port( A,B,C,D: in std_logic_vector(15 downto 0);sel_0,sel_1 : in std_logic; Y: out std_logic_vector(15 downto 0));
end entity;

architecture struct of mux4_1_16 is 
 component mux4_to_1 is 
 

 port( A,B,C,D,sel_0,sel_1: in std_logic; Y: out std_logic);

 end component;
 
begin 

 gen: for i in 0 to 15 generate
 
  mux: mux4_to_1
  
   port map( A => A(i), B => B(i),C => C(i), D => D(i), sel_0 => sel_0, sel_1 => sel_1, Y => Y(i));
 end generate;	

end struct;  