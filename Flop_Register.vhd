----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:38:36 04/19/2024 
-- Design Name: 
-- Module Name:    Flop_Register - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Flop_Register is
  port (
    i: in std_logic_vector (31 downto 0); --input
    o: out std_logic_vector (31 downto 0); --output
    l: in std_logic; 
    clk : in std_logic;
    rst: in std_logic
  );
end Flop_Register;

architecture rtl of Flop_Register is
signal is_reset : std_logic := '1'; 
begin
	
  process (clk)
  begin
	if is_reset='1' then
		o <= (others => '0');
		is_reset<='0';
		end if;
    if rising_edge(clk) then
      if rst = '1' then
        o <= (others => '0');
      elsif l = '1' then
        o <= i;
      end if;
    end if;
  end process;
	
end architecture;