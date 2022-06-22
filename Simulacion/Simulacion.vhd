library ieee;
use ieee.std_logic_1164.all;

entity Simulacion is
	port
	(
		a, b: in std_logic;
		w, x, y, z: out std_logic
	);
end Simulacion;

architecture Behavioral of Simulacion is
begin
	w <= not (a) and not (b);
	x <= not (a) and b;
	y <= a and not (b);
	z <= a and b;
end Behavioral;