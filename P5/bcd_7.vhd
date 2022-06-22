library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd_7 is
	port
	(
	entr: in std_logic_vector(3 downto 0);
	sal: out std_logic_vector(6 downto 0));
end bcd_7;

architecture Behavioural of bcd_7 is 

signal m0,m1,m2,m3: std_logic;

begin
	m0<= entr(3);
	m1<= entr(2);
	m2<= entr(1);
	m3<= entr(0);
	
	sal(6)<= (not(m2) and not(m0)) or (m1 and m2) or (not(m3) and m1) or (not(m3) and m2 and m0) or (m3 and not(m1) and not(m0)) or (m3 and not(m2) and not(m1));
	sal(5)<= (not(m3) and not(m2)) or (not(m2) and not(m0)) or (m3 and not(m1) and m0) or (not(m3) and not(m1) and not(m0)) or (not(m3) and m1 and m0);
	sal(4)<= (not(m1) and m0) or (m3 and not(m2)) or (not(m3) and m2) or (not(m3) and not(m1)) or (not(m3) and m0);
	sal(3)<= (m3 and not(m1) and not(m0)) or (m2 and not(m1) and m0) or (m2 and m1 and not(m0)) or (not(m2) and m1 and m0) or (not(m3) and not(m2) and not(m0));
	sal(2)<= (m3 and m2) or (m1 and not(m0)) or (m3 and m1 and m0) or (not(m2) and not(m1) and not(m0));
	sal(1)<= (not(m1) and not(m0)) or (m3 and not(m2)) or (m3 and m1) or (not(m3) and not(m1) and m2) or (not(m0) and m2 and m1);
	sal(0)<= (not(m2) and m3) or (not(m0) and m1) or (m3 and m0) or (not(m2) and m1) or (not(m3) and not(m1) and m2);

end Behavioural;