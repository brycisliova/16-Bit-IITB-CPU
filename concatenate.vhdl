library ieee;
use ieee.std_logic_1164.all;

entity concatenate is
    port (
        A: in std_logic_vector(7 downto 0);
        C: out std_logic_vector(15 downto 0)
    );
end entity;

architecture struct of concatenate is
begin
process(A)
 variable p: std_logic_vector(15 downto 0) := (others => '0');
 begin
        for_loop: for i in 7 downto 0 loop
            p(i) := A(i);
        end loop for_loop;
		  
        for_loop_1: for i in 15 downto 8 loop
            p(i) := '0' ;
        end loop for_loop_1;
        C<=p;
end process;
end struct;