

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Adder is
    Port ( input_1 : in  STD_LOGIC_VECTOR (31 downto 0);
           input_2 : in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end Adder;

architecture Behavioral of Adder is
signal result : STD_LOGIC_VECTOR (32 DOWNTO 0); --33bits to handle potential overflow

begin

	result <= std_logic_vector(unsigned('0' & input_1) + unsigned('0' & input_2)); --0 appeneded to ensure number is treated as positive in 2's comp arthimetic and convert it to unsigned number
	output <= result(31 DOWNTO 0);


end Behavioral;

