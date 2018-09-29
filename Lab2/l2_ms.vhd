library IEEE;
use IEEE.std_logic_1164.all;

entity l2 is
  port (
    x1, x2, x3, x4: in std_logic;
    y1, y2, y3, y4: out std_logic);
end l2 ;

architecture arch2 of l2 is
    signal a1: std_logic;
    signal b1: std_logic;
    signal c1, c2: std_logic;
    signal d1, d2, d3: std_logic;
    signal e1, e2, e3, e4: std_logic;
    signal f1, f2, f3, f4: std_logic;
begin

	a1 <= x4 nor x4 after 1 ns;
	b1 <= x1 and a1 after 2 ns;
	c1 <= b1 nor b1 after 1 ns;
	c2 <= x2 nor x2 after 1 ns;
	d1 <= x1 nor x1 after 1 ns;
	d2 <= c1 nor c1 after 1 ns;
	d3 <= not (c2 or x3 or x1) after 4 ns;
	e1 <= not (x2 and a1 and d1) after 3 ns;
	e2 <= x3 xor d2 after 5 ns;
	e3 <= x3 nor x3 after 1 ns;
	e4 <= not (d3 or (x3 and c2 and x1)) after 5 ns;
	f1 <= not (e3 or (e1 and (x2 or c1))) after 4 ns;
	f2 <= not (x3 or x4 or (c2 and d1)) after 5 ns;
	f3 <= not (e2 and (x4 or x2)) after 3 ns;
	f4 <= not (e4 and (x4 or (c2 and x1))) after 4 ns;   

    y1 <= f1;
    y2 <= f2;
    y3 <= f3;
    y4 <= f4;
end arch2 ; 