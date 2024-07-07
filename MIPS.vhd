library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Phase2_Package.ALL;

entity MIPS is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           pc : out  STD_LOGIC_VECTOR (31 downto 0);
           instr : in  STD_LOGIC_VECTOR (31 downto 0);
           memwrite : out  STD_LOGIC;
           aluout : out  STD_LOGIC_VECTOR (31 downto 0);
           writedata : out  STD_LOGIC_VECTOR (31 downto 0);
           readdata : in  STD_LOGIC_VECTOR (31 downto 0));
end MIPS;

architecture Behavioral of MIPS is

signal alusrc, regdst, regwrite, jump, pcsrc, memtoreg: STD_LOGIC;
signal zero: STD_LOGIC;
signal alucontrol: STD_LOGIC_VECTOR (3 downto 0);
signal opcode, funct: STD_LOGIC_VECTOR (5 downto 0);

signal pc_signal, alu_out, write_data: STD_LOGIC_VECTOR (31 downto 0);

begin

opcode <= instr(31 downto 26);
funct <= instr(5 downto 0);

controlunit: controller port map (opcode, funct, zero, regwrite, regdst, memwrite, memtoreg, pcsrc, alusrc, jump, alucontrol);
datapath1: datapath port map (clk, reset, readdata, instr, memtoreg, jump, pcsrc, alusrc, regwrite, regdst, alucontrol, zero, pc, aluout, writedata);


end Behavioral;

