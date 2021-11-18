-- Mateusz Gabryel 181329 EiT 3
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY tb IS
END tb;

ARCHITECTURE Behavioral OF tb IS

COMPONENT top IS
    PORT ( sw_i : in STD_LOGIC_VECTOR (7 downto 0);
           led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
           led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0)
           );
END COMPONENT top;

   signal sw_i : STD_LOGIC_VECTOR (7 downto 0);
   signal led7_an_o : STD_LOGIC_VECTOR (3 downto 0);
   signal led7_seg_o : STD_LOGIC_VECTOR (7 downto 0);

BEGIN
    uut: top PORT MAP (
          sw_i => sw_i,
          led7_seg_o => led7_seg_o,
          led7_an_o => led7_an_o
        );
        
tb: PROCESS
   BEGIN		  
		sw_i <= "00000000"; --przelaczniki OFF (00000000)
		wait for 100 ms;
		sw_i <= "00000001"; --przelaczniki 7 OFF i 1 ON
		wait for 100 ms;
		sw_i <= "00000011"; --przelaczniki 6 OFF i 2 ON
		wait for 100 ms;
		sw_i <= "00000111"; --przelaczniki 5 OFF i 3 ON
		wait for 100 ms;
		sw_i <= "00001111"; --przelaczniki 4 OFF i 4 ON
		wait for 100 ms;
		sw_i <= "00011111"; --przelaczniki 3 OFF i 5 ON
		wait for 100 ms;
		sw_i <= "00111111"; --przelaczniki 2 OFF i 6 ON
		wait for 100 ms;
		sw_i <= "01111111"; --przelaczniki 1 OFF i 7 ON
		wait for 100 ms;
		sw_i <= "11111111"; --przelaczniki ON (11111111)
      wait;
   END PROCESS;

END Behavioral;