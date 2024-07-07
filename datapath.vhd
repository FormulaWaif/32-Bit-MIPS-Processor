library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Phase2_Package.ALL;

entity datapath is

port(clk, reset: in STD_LOGIC;
readdata: in STD_LOGIC_VECTOR(31 downto 0);  
instr: in STD_LOGIC_VECTOR(31 downto 0);  
memtoreg, jump, pcsrc, alusrc, regwrite, regdst: in STD_LOGIC;  
aluoperation: in STD_LOGIC_VECTOR(3 downto 0);  
zero: out STD_LOGIC;
pc: out STD_LOGIC_VECTOR(31 downto 0);
aluout: out STD_LOGIC_VECTOR(31 downto 0);
writedata: out STD_LOGIC_VECTOR(31 downto 0));

end datapath;


architecture Behavioral of datapath is

signal rs, rt, rd, writereg : STD_LOGIC_VECTOR (4 downto 0):= "00000";
signal immediate: STD_LOGIC_VECTOR (15 downto 0):= x"0000";
signal se_imm, shift, readdata1, readdata2, write_data, alu_in, alu_out: STD_LOGIC_VECTOR (31 downto 0):= x"00000000";
signal pc_in, pc_out, pc_jump, pc_branch, pc_plus4, pc_temp3: STD_LOGIC_VECTOR (31 downto 0):= x"00000000";
signal pc_temp1: STD_LOGIC_VECTOR (25 downto 0);
signal pc_temp2: STD_LOGIC_VECTOR (27 downto 0);

begin

rs <= instr (25 downto 21);
rt <= instr (20 downto 16);
rd <= instr (15 downto 11);
pc_temp1 <= instr (25 downto 0);

immediate <= instr (15 downto 0);
writereg_mux: MUX generic map (5) port map (rt, rd, regdst, writereg);
reg: regFile port map (rs, rt, writereg, regwrite, clk, write_data, readdata1, readdata2);
se: Sign_Extender port map (immediate, se_imm);
alu_input_mux: MUX generic map (32) port map (readdata2, se_imm, alusrc, alu_in);
alu1: ALU port map (readdata1, alu_in, aluoperation, alu_out, zero);
writedata_mux: MUX generic map (32) port map (alu_out, readdata, memtoreg, write_data);

pcAdder1: Adder port map (pc_out, "00000000000000000000000000000100", pc_plus4);
shiftleft_pc: pc_sl2 port map(pc_temp1, pc_temp2);
pc_jump <= pc_plus4 (31 downto 28) & pc_temp2 ;
shiftleft_immediate: shiftleft2 generic map (32) port map (se_imm, shift);
pcAdder2: Adder port map (pc_plus4, shift, pc_branch);
pcbranch_mux: MUX generic map (32) port map (pc_plus4, pc_branch, pcsrc, pc_temp3);
pcjump_mux: MUX generic map (32) port map (pc_temp3, pc_jump, jump, pc_in);
pcreg: FLopR generic map(32) port map (clk, reset, pc_in, pc_out);

aluout <= alu_out;
writedata <= readdata2;
pc <= pc_out;

end Behavioral;

