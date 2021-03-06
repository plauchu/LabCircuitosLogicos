library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.numeric_std.all;

entity  data_memory  is
	port
	(
		CLK , RESET , MW : in  std_logic;
		Data_in : in  std_logic_vector (15  downto  0);
		Address : in  std_logic_vector (15  downto  0);
		Data_out : out  std_logic_vector (15  downto  0)
	);
end  data_memory;

architecture  ram_arc  of  data_memory  is
       type  mem_type  is  array (2**8 - 1 downto  0) of  std_logic_vector (15  downto  0);
	signal  mem : mem_type  := (others => X"0000");
begin
PROCESS(CLK)
begin
	if (CLK 'event  AND  CLK =  '1') then
		if ( RESET =  '1') then
			mem  <= (others => X"0000");
		else
			if ( MW = '1' ) then
				mem(to_integer(unsigned (Address)))  <= Data_in;
			end if;
		end if;
	mem(0) <= "0000000000000011";
	mem(1) <= "0000000000000011";	
	end if;
end  process;
	Data_out  <= mem(to_integer(unsigned (Address)));
end  ram_arc;