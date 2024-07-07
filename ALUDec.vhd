----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:46:42 05/01/2024 
-- Design Name: 
-- Module Name:    ALUDec - Behavioral 
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

entity ALUDec is
    Port ( aluop : in  STD_LOGIC_VECTOR (1 downto 0);
           funct : in  STD_LOGIC_VECTOR (5 downto 0);
           alucontrol : out  STD_LOGIC_VECTOR (3 downto 0));
end ALUDec;

architecture Behavioral of ALUDec is
signal result1,result2:STD_LOGIC_VECTOR (3 downto 0);
begin

result1<="0010" when funct(3 downto 0)="0000" else
         "0110" when funct(3 downto 0)="0010" else
			"0000" when funct(3 downto 0)="0100" else
			"0001" when funct(3 downto 0)="0101";	

result2<="0111" when funct(3 downto 0)="1010" else result1;

alucontrol<="0010" when aluop="00" else "0110" when aluop="01" else result2;		

   
end Behavioral;