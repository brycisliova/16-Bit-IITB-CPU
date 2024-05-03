library ieee;
use ieee.std_logic_1164.all;

entity mux2_to_1 is 
 port( A,B,sel: in std_logic; Y: out std_logic);
end entity;

architecture struct of mux2_to_1 is 
begin 

  Y <= (( A and (not sel)) or ( sel and B));
end struct;  