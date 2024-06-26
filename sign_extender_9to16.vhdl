library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.ALL;

entity sign_extender_9to16 is
    port (
        A: in std_logic_vector(8 downto 0);
        C: out std_logic_vector(15 downto 0)
    );
end entity;

architecture struct of sign_extender_9to16 is
begin

process (A)

	 begin
    C <= std_logic_vector(to_signed(to_integer(signed(A)),16));
end process;
end struct;