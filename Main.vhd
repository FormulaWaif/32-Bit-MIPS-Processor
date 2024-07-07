library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Phase2_Package.ALL;

entity Main is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           writedata : out  STD_LOGIC_VECTOR (31 downto 0);
           dataadr : out  STD_LOGIC_VECTOR (31 downto 0);
           memwrite : out  STD_LOGIC);
end Main;

architecture Behavioral of Main is

signal pc, instr, aluout, readdata, dataout: STD_LOGIC_VECTOR (31 downto 0);
signal mem_write: STD_LOGIC;
signal address: STD_LOGIC_VECTOR (5 downto 0);

begin

address <= pc(7 downto 2);

instr_mem: imem port map (address ,instr);
mips1: MIPS port map (clk, rst, pc, instr, mem_write, aluout, dataout, readdata);
data_mem: dmem port map (clk, mem_write, aluout, dataout, readdata);

writedata <= dataout;
dataadr <= aluout;
memwrite <= mem_write;

end Behavioral;
