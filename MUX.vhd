library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity MUX is
	Generic (n: integer);
    Port ( data1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           data2 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           selector : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR (n-1 downto 0));
end MUX;

architecture Behavioral of MUX is

begin

dataout <= data1 when selector='0' else data2;

end Behavioral;

