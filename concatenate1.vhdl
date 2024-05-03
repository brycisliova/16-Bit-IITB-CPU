library ieee;
use ieee.std_logic_1164.all;

entity concatenate1 is
    port (
        A: in std_logic_vector(7 downto 0);
        C: out std_logic_vector(15 downto 0)
    );
end entity;

architecture struct of concatenate1 is
begin

process(A)
    variable p: std_logic_vector(15 downto 0) := (others => '0');
begin
	 
    loop1: for i in 15 downto 8 loop
        p(i) := A(i-8);
    end loop loop1;

    loop2: for i in 7 downto 0 loop
        p(i) := '0';
    end loop loop2;

    C <= p;
end process;

end struct;