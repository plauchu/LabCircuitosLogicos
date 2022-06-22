library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity circuito_aritmetico is
	port
	(
	--entradas
	cin: in std_logic;
	A, B: in std_logic_vector(15 downto 0);
	S: in std_logic_vector(1 downto 0);
	--salidas
	cout: out std_logic;
	G: out std_logic_vector(15 downto 0)
	);

end circuito_aritmetico;

architecture rtl of circuito_aritmetico is

	--señals para mux
	signal Y: std_logic_vector(15 downto 0):=(others => '0');
	constant unos:std_logic_vector(15 downto 0):=(others => '1');
	constant ceros:std_logic_vector(15 downto 0):=(others =>'0');
	
	--señales para sumador
	signal Gtemp: unsigned(16 downto 0):= (others => '0');
	signal cinTemp: unsigned(16 downto 0):= (others => '0');
	
	
begin
---------------------------------------------------------------------
--------------       MUX                  ---------------------------
---------------------------------------------------------------------
	with S select
	Y <= ceros when "00",
			B when "01",
			not(B) when "10",
			unos when "11",
			"XXXXXXXXXXXXXXXX" when others;
---------------------------------------------------------------------
--------------       Operaciones Aritmeticas    --------------
---------------------------------------------------------------------
	cinTemp(0) <= cin;
	Gtemp <= unsigned('0' & A) + unsigned('0' & Y) + unsigned(cinTemp);
	G <= std_logic_vector(Gtemp(15 downto 0));
	cout <= Gtemp(16);

end rtl;