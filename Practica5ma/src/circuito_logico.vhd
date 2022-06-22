library ieee;
use ieee.std_logic_1164.all;

entity circuito_logico is
	port
	(
		S: in std_logic_vector(1 downto 0);
		A, B: in std_logic_vector(15 downto 0);
		G: out std_logic_vector(15 downto 0)
	);
end circuito_logico;

architecture rtl of circuito_logico is
begin
	with S select
		G <= A and B when "00",
			  A or B when "01",
			  A xor B when "10",
			  not(A) when others;
end rtl;

