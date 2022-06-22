library ieee;
use ieee.std_logic_1164.all;

entity shifter is
	port
	(
		S: in std_logic_vector(1 downto 0);
		B: in std_logic_vector(15 downto 0);
		G: out std_logic_vector(15 downto 0)
	);
end shifter;

architecture rtl of shifter is
begin
	with S select
		G <= B when "00",
			  '0' & B(15 downto 1) when "01",
			  B(14 downto 0) & '0' when "10",
			  X"0000" when others;
end rtl;

