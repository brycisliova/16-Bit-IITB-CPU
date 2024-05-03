library ieee;
use ieee.std_logic_1164.all;

entity mux4_to_1 is 
 port( A,B,C,D,sel_0,sel_1: in std_logic; Y: out std_logic);
end entity;

architecture struct of mux4_to_1 is 
begin 
  Y <= (((not sel_0) and (not sel_1) and A) or ( sel_0 and (not sel_1) and B) or ((not sel_0) and sel_1 and C) or (sel_1 and sel_0 and D));
end struct;  