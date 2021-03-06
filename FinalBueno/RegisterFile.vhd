library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_file is
port
( 
CLK, RESET, RW : in std_logic;
AA : in std_logic_vector (2 downto 0);
BA : in std_logic_vector (2 downto 0);
DA : in std_logic_vector (2 downto 0);
REG_ADD : in std_logic_vector (2 downto 0);

D_data_in : in std_logic_vector (15 downto 0);
A_data_out : out std_logic_vector (15 downto 0);
B_data_out : out std_logic_vector (15 downto 0);
HEX_OUT : out std_logic_vector (15 downto 0)

); 
end register_file;


architecture register_file of register_file is
	type mem_type is array(7 downto 0) of std_logic_vector (15 downto 0);
	signal mem : mem_type := (others => X"0000");
begin
PROCESS(CLK)
begin

	if(CLK'event and CLK = '1') then
		if(RESET = '1') then
			mem <= (others => X"0000");
		else
			if(RW = '1') then
				mem(to_integer(unsigned(DA))) <= D_data_in; 
			end if;
		end if;
	end if;
	
end process;
		A_data_out <= mem(to_integer(unsigned(AA)));
		B_data_out <= mem(to_integer(unsigned(BA)));
		HEX_OUT <= mem(to_integer(unsigned(REG_ADD)));
end register_file;