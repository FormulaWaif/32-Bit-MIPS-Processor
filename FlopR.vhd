----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:50:07 03/24/2024 
-- Design Name: 
-- Module Name:    FlopR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FlopR is
Generic (n: integer);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Q : out  STD_LOGIC_VECTOR (n-1 downto 0));
end FlopR;

architecture Behavioral of FlopR is

begin
process (clk, rst)
begin
if (rst = '1') then 
Q <= (others => '0');

elsif (clk'event and clk = '1') then 
Q <= D;
end if;
end process;
end Behavioral;

