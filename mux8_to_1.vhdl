library ieee;
use ieee.std_logic_1164.all;

entity mux8_to_1 is 
  port( 
    A, B, C, D, E, F, G, H,sel_0, sel_1, sel_2: in std_logic;Y: out std_logic);
end entity;

architecture struct of mux8_to_1 is 
begin 

  Y <= (((not sel_0) and (not sel_1) and (not sel_2) and A) or 

  (sel_0 and (not sel_1) and (not sel_2) and B) or
  
  ((not sel_0) and sel_1 and (not sel_2) and C) or 

  (sel_1 and sel_0 and (not sel_2) and D) or 

  ((not sel_0) and (not sel_1) and sel_2 and E) or 

  (sel_0 and (not sel_1) and sel_2 and F) or 

  ((not sel_0) and sel_1 and sel_2 and G) or 

  (sel_1 and sel_0 and sel_2 and H));
		  
end struct;
