library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.std_logic_unsigned.all;
use  ieee.std_logic_arith.all;
entity  LogicCircuit  is
	port
	(
		A      : in  std_logic_vector (15  downto  0);
		B      : in  std_logic_vector (15  downto  0);
		S      : in  std_logic_vector (1  downto  0);
		G      : out  std_logic_vector (15  downto  0)
	);
end  LogicCircuit;
architecture  function_table  of  LogicCircuit  is
	signal  input     : std_logic_vector (1  downto  0)
:= S;
	signal  res       : std_logic_vector (15  downto  0)
:=  "0000000000000000";

begin

--Aqui  van  las  asignaciones
	input  <= S;
	with  input  select
		res  <= A AND B            			when  "00" ,
			A OR B					         	when  "01" ,
			A XOR B							      when  "10" ,
			NOT A					      		   when  "11" ,
			"XXXXXXXXXXXXXXXX"   				when  others;
		G      <= res(15  downto  0);
end function_table;