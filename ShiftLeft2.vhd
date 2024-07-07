library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shiftleft2 is
 generic (
        n : integer
    );
    PORT (
        a : IN STD_LOGIC_VECTOR(n - 1 downto 0);
        y : OUT STD_LOGIC_VECTOR(n - 1 downto 0)
    );
end shiftleft2;

architecture shiftleft_behavioral of shiftleft2 is
begin
    y <= a(n-3 downto 0) & "00";
end shiftleft_behavioral;
