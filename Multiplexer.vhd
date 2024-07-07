----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:39:16 04/19/2024 
-- Design Name: 
-- Module Name:    Multiplexer - Behavioral 
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

entity Multiplexer is
    port (
        i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,
        i14,i15,i16,i17,i18,i19,i20,i21,i22,i23,i24,i25,
        i26,i27,i28,i29,i30,i31: in std_logic_vector (31 downto 0);
        selector: in std_logic_vector (4 downto 0);
        o: out std_logic_vector (31 downto 0)
    );
end Multiplexer;

architecture rtl of Multiplexer is

begin
    o<= 
    i0 WHEN selector = "00000" ELSE
    i1 WHEN selector = "00001" ELSE
    i2 WHEN selector = "00010" ELSE
    i3 WHEN selector = "00011" ELSE
    i4 WHEN selector = "00100" ELSE
    i5 WHEN selector = "00101" ELSE
    i6 WHEN selector = "00110" ELSE
    i7 WHEN selector = "00111" ELSE
    i8 WHEN selector = "01000" ELSE
    i9 WHEN selector = "01001" ELSE
    i10 WHEN selector = "01010" ELSE
    i11 WHEN selector = "01011" ELSE
    i12 WHEN selector = "01100" ELSE
    i13 WHEN selector = "01101" ELSE
    i14 WHEN selector = "01110" ELSE
    i15 WHEN selector = "01111" ELSE
    i16 WHEN selector = "10000" ELSE
    i17 WHEN selector = "10001" ELSE
    i18 WHEN selector = "10010" ELSE
    i19 WHEN selector = "10011" ELSE
    i20 WHEN selector = "10100" ELSE
    i21 WHEN selector = "10101" ELSE
    i22 WHEN selector = "10110" ELSE
    i23 WHEN selector = "10111" ELSE
    i24 WHEN selector = "11000" ELSE
    i25 WHEN selector = "11001" ELSE
    i26 WHEN selector = "11010" ELSE
    i27 WHEN selector = "11011" ELSE
    i28 WHEN selector = "11100" ELSE
    i29 WHEN selector = "11101" ELSE
    i30 WHEN selector = "11110" ELSE
    i31 WHEN selector = "11111" ELSE
   (OTHERS => 'Z');

end architecture;
