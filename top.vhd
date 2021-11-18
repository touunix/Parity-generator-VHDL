-- Mateusz Gabryel 181329 EiT 3
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use std.standard.all;

ENTITY top IS
    PORT ( sw_i : in STD_LOGIC_VECTOR (7 downto 0);
           led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
           led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0)
           );
END top;

ARCHITECTURE Behavioral OF top IS
    signal a : STD_LOGIC;
BEGIN
    -- podanie 1 skutkuje wygaszeniem (AN3 -1, AN2 -1, AN1 -1)
    -- podanie 0 skutkuje dzialaniem (ANO -0)
    led7_an_o(3) <= '1';
    led7_an_o(2) <= '1';
    led7_an_o(1) <= '1';
    led7_an_o(0) <= '0';
    
    -- podanie 1 skutkuje wygaszeniem (dp - 1)
    -- podanie 0 skutkuje dzialaniem (SEG7 -0, SEG4 -0, SEG3 -0, SEG2 -0)
    -- stan zmienia tylko 6,5,1
    -- reszta (7,4,3,2,0) jest stala
    a <= sw_i(0) xor sw_i(1) xor sw_i(2) xor sw_i(3) xor sw_i(4) xor sw_i(5) xor sw_i(6) xor sw_i(7);
    
    led7_seg_o(7) <= '0';
    led7_seg_o(6) <= not a;
    led7_seg_o(5) <= not a;
    led7_seg_o(4) <= '0';
    led7_seg_o(3) <= '0';
    led7_seg_o(2) <= '0';
    led7_seg_o(1) <= a;
    led7_seg_o(0) <= '1';
    
END Behavioral;