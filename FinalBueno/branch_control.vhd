library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all;

library work;

ENTITY branch_control is
port (
	PL, JB, BC, N, Z : in  STD_LOGIC;
	oper             : out STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END branch_control;

ARCHITECTURE bdf_type of branch_control is

signal res: STD_LOGIC_VECTOR (1 DOWNTO 0) := "00";

begin
	res(0) <= (PL AND BC AND N AND (JB XOR (PL AND BC AND N))) OR (PL AND Z AND ((JB AND BC) XOR (PL AND Z)));
	res(1) <= PL AND JB;

	oper <= res;
end bdf_type;
		
			

	
			
		
			
			
	
		