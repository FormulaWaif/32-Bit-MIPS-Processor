----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:45:29 04/19/2024 
-- Design Name: 
-- Module Name:    register_File - Behavioral 
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
use work.Multiplexer;
use work.Flop_Register;
use work.Decoder;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity regFile is
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  rst : in STD_LOGIC:= '0';
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end regFile;

architecture rtl of regFile is

SIGNAL L : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Out1, Out2, Out3, Out4, Out5, Out6, Out7,
 Out8, Out9, Out10, Out11, Out12, Out13, Out14, 
 Out15, Out16, Out17, Out18, Out19, Out20, Out21, Out22, 
 Out23, Out24, Out25, Out26, Out27, Out28, Out29, Out30, Out31, Out32 : STD_LOGIC_VECTOR (31 downto 0);
 
begin

decoder1 : entity Decoder port map (write_sel,write_ena,L);

zero:  entity  Flop_Register port map ( write_data , Out1 , L(0) , clk ,rst );
at:  entity  Flop_Register port map ( write_data , Out2 , L(1) , clk ,rst );
v0:  entity  Flop_Register port map ( write_data , Out3 , L(2) , clk ,rst );
v1:  entity  Flop_Register port map ( write_data , Out4 , L(3) , clk ,rst );
a0:  entity  Flop_Register port map ( write_data , Out5 , L(4) , clk ,rst );
a1:  entity  Flop_Register port map ( write_data , Out6 , L(5) , clk ,rst );
a2:  entity  Flop_Register port map ( write_data , Out7 , L(6) , clk ,rst );
a3:  entity  Flop_Register port map ( write_data , Out8 , L(7) , clk ,rst );
t0:  entity  Flop_Register port map ( write_data , Out9 , L(8) , clk ,rst );
t1:  entity  Flop_Register port map ( write_data , Out10 , L(9) , clk ,rst);
t2:  entity  Flop_Register port map ( write_data , Out11 , L(10) , clk ,rst );
t3:  entity  Flop_Register port map ( write_data , Out12 , L(11) , clk ,rst );
t4:  entity  Flop_Register port map ( write_data , Out13 , L(12) , clk ,rst);
t5:  entity  Flop_Register port map ( write_data , Out14 , L(13) , clk ,rst );
t6:  entity  Flop_Register port map ( write_data , Out15 , L(14) , clk ,rst );
t7:  entity  Flop_Register port map ( write_data , Out16 , L(15) , clk ,rst );
s0:  entity  Flop_Register port map ( write_data , Out17 , L(16) , clk ,rst );
s1:  entity  Flop_Register port map ( write_data , Out18 , L(17) , clk ,rst );
s2:  entity  Flop_Register port map ( write_data , Out19 , L(18) , clk ,rst );
s3:  entity  Flop_Register port map ( write_data , Out20 , L(19) , clk ,rst );
s4:  entity  Flop_Register port map ( write_data , Out21 , L(20) , clk ,rst );
s5:  entity  Flop_Register port map ( write_data , Out22 , L(21) , clk ,rst );
s6:  entity  Flop_Register port map ( write_data , Out23 , L(22) , clk ,rst );
s7:  entity  Flop_Register port map ( write_data , Out24 , L(23) , clk ,rst );
t8:  entity  Flop_Register port map ( write_data , Out25 , L(24) , clk ,rst);
t9:  entity  Flop_Register port map ( write_data , Out26 , L(25) , clk ,rst );
k0:  entity  Flop_Register port map ( write_data , Out27 , L(26) , clk ,rst);
k1:  entity  Flop_Register port map ( write_data , Out28 , L(27) , clk ,rst);
gp:  entity  Flop_Register port map ( write_data , Out29 , L(28) , clk ,rst );
sp:  entity  Flop_Register port map ( write_data , Out30 , L(29) , clk ,rst );
fp:  entity  Flop_Register port map ( write_data , Out31 , L(30) , clk ,rst );
ra:  entity  Flop_Register port map ( write_data , Out32 , L(31) , clk ,rst);

multiplexer1 : entity Multiplexer port map (Out1, Out2, Out3, Out4, Out5, Out6, Out7,
 Out8, Out9, Out10, Out11, Out12, Out13, Out14, 
 Out15, Out16, Out17, Out18, Out19, Out20, Out21, Out22, 
 Out23, Out24, Out25, Out26, Out27, Out28, Out29, Out30, Out31, Out32,read_sel1,data1);
 
multiplexer2 : entity Multiplexer port map (Out1, Out2, Out3, Out4, Out5, Out6, Out7,
 Out8, Out9, Out10, Out11, Out12, Out13, Out14, 
 Out15, Out16, Out17, Out18, Out19, Out20, Out21, Out22, 
 Out23, Out24, Out25, Out26, Out27, Out28, Out29, Out30, Out31, Out32,read_sel2,data2);


end rtl;
