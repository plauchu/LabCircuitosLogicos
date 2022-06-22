library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity circuito_aritmetico is
	port
	(
		Cin: in std_logic;							
		A, B: in std_logic_vector(15 downto 0);
		S: in std_logic_vector(1 downto 0);		
		Cout: out std_logic;							
		G: out std_logic_vector(15 downto 0)	
	);
end circuito_aritmetico;

architecture rtl of circuito_aritmetico is
	signal Y: unsigned(16 downto 0):= (others => '0');
	signal Ai, Bi: unsigned(15 downto 0):= (others => '0');
	signal Go: unsigned(16 downto 0):= (others => '0');
	signal Cin_temp: unsigned(16 downto 0):= (others => '0');
	
begin
	Ai <= unsigned(A);
	Bi <= unsigned(B);
	Cin_temp(16 downto 1) <= (others => '0');
	Cin_temp(0) <= Cin;
	
	proceso_Mux: process(S, Ai, Bi)
	begin
		case S is
			when "01" => Y <= '0' & Bi;
			when "10" => Y <= '0' & not(Bi);
			when "11" => Y <= (others => '1');
			when others => Y <= (others => '0');
		end case;
	end process;
		
	Go <= Ai + Y + Cin_temp;
	G <= std_logic_vector(Go(15 downto 0));
	Cout <= Go(16);

end rtl;
