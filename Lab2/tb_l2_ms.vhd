library IEEE;
use IEEE.std_logic_1164.all;

entity l2_test is
end l2_test ;

architecture my_arch of l2_test is
    component l2
        port (
          x1, x2, x3, x4: in std_logic;
          y1, y2, y3, y4: out std_logic
        ) ;
    end component;
    signal x1, x2, x3, x4: std_logic;
    signal y1, y2, y3, y4: std_logic;
begin
    s1: l2 port map (x1, x2, x3, x4,
                         y1, y2, y3, y4);

    x1 <= '1' , '0' after 150 ns,  '1' after 300 ns,  '0' after 450 ns, '1' after 600 ns, '0' after 750 ns,  '0' after 900 ns,  '1' after 1050 ns, '0' after 1200 ns, '1' after 1350 ns, '0' after 1500 ns, '0' after 1650 ns, '0' after 1800 ns, '1' after 1950 ns, '1' after 2100 ns;
    x2 <= '1' , '0' after 150 ns,  '1' after 300 ns,  '0' after 450 ns, '1' after 600 ns, '0' after 750 ns,  '1' after 900 ns,  '0' after 1050 ns, '0' after 1200 ns, '0' after 1350 ns, '1' after 1500 ns, '1' after 1650 ns, '1' after 1800 ns, '0' after 1950 ns, '1' after 2100 ns;
    x3 <= '1' , '0' after 150 ns,  '1' after 300 ns,  '1' after 450 ns, '0' after 600 ns, '0' after 750 ns,  '0' after 900 ns,  '0' after 1050 ns, '1' after 1200 ns, '1' after 1350 ns, '1' after 1500 ns, '0' after 1650 ns, '1' after 1800 ns, '0' after 1950 ns, '0' after 2100 ns;
    x4 <= '0' , '1' after 150 ns,  '1' after 300 ns,  '0' after 450 ns, '0' after 600 ns, '0' after 750 ns,  '0' after 900 ns,  '1' after 1050 ns, '1' after 1200 ns, '0' after 1350 ns, '1' after 1500 ns, '1' after 1650 ns, '0' after 1800 ns, '0' after 1950 ns, '1' after 2100 ns;
end my_arch ; 
