library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           zflag : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

signal S,BB,result1,result2,finalres, slt:STD_LOGIC_VECTOR (31 downto 0);
signal temp:STD_LOGIC_VECTOR (32 downto 0);

begin

slt <= X"00000001" WHEN data1 < data2 ELSE

		X"00000000";
		
temp <= (('0' & data1) + ('0' & data2)) WHEN aluop = "0010" ELSE
(('0' & data1) - ('0' & data2)) WHEN aluop = "0110" ELSE
  (OTHERS=>'0');

result1<= 
         data1 and data2 when aluop ="0000" else
			data1 or data2 when aluop ="0001" else
			temp (31 downto 0) when aluop = "0010" else
			temp (31 downto 0) when aluop ="0110" else
			data1 nor data2 when aluop="1100" else
			slt when aluop= "0111";
			
			
dataout<= result1;
zflag<= '1' when result1= X"00000000" else '0';

end Behavioral;