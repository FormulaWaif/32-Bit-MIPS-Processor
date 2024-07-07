library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Sign_Extender is
    Port ( se_in : in  STD_LOGIC_VECTOR (15 downto 0);
           se_out : out  STD_LOGIC_VECTOR (31 downto 0));
end Sign_Extender;

architecture Behavioral of Sign_Extender is

begin

	se_out <= x"0000" & se_in when se_in(15) = '0' else
				 x"FFFF" & se_in;

end Behavioral;

