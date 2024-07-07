----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:20:16 05/01/2024 
-- Design Name: 
-- Module Name:    MainDec - Behavioral 
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

entity MainDec is
    Port ( Opcode : in  STD_LOGIC_VECTOR (5 downto 0);
           RegWrite, RegDst : out  STD_LOGIC;
           ALUSrc, Branch : out  STD_LOGIC;
			  MemWrite, MemtoReg : out  STD_LOGIC;
           Jump : out  STD_LOGIC;
           ALUOp : out  STD_LOGIC_VECTOR (1 downto 0));
end MainDec;

architecture Behavioral of MainDec is
signal controls : STD_LOGIC_VECTOR (8 downto 0);
begin

	controls <= "110000010" when opcode = "000000" else --RTYPE
    "101001000"	when opcode = "100011" else --LW
	 "001010000" when opcode = "101011" else --SW
    "000100001" when opcode = "000100" else --BEQ
	 "101000000" when opcode = "001000" else --ADDI
  	 "000000100" when opcode = "000010" else --J
	 "---------"; --illegal op

(RegWrite, RegDst, ALUSrc, Branch, MemWrite, MemtoReg, Jump, ALUOp(1), ALUOp(0)) <= controls;
end Behavioral;
