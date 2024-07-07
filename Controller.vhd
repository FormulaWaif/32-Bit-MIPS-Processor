library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Phase2_Package.ALL;

entity Controller is
	Port ( opcode, funct : in  STD_LOGIC_VECTOR (5 downto 0);
			zflag: in  STD_LOGIC;
         regWrite, regDst : out  STD_LOGIC;
		   memWrite, memtoReg : out  STD_LOGIC;
         pcSrc, aluSrc : out  STD_LOGIC;
         jump : out  STD_LOGIC;
			aluControl: out STD_LOGIC_VECTOR (3 downto 0));

end Controller;

architecture Behavioral of Controller is

	signal aluOp : STD_LOGIC_VECTOR (1 downto 0);
	signal branch: STD_LOGIC ;

begin

	 pcSrc <= zflag and branch;

	 main_Dec: MainDec port map (opcode, regWrite, regDst, aluSrc, branch, memWrite, memtoReg, jump, aluOp);
	 
	 alu_Dec: ALUDec port map (funct, aluOp, aluControl);
	 
 
end Behavioral; 


