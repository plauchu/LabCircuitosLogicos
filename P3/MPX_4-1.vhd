library  IEEE;
use  IEEE.STD_LOGIC_1164.ALL;
use  IEEE.STD_LOGIC_ARITH.ALL;
use  IEEE.STD_LOGIC_UNSIGNED.ALL;
entity  mpx_4_to_1  is
port(
S: in  std_logic_vector (0 to 1);
I0: in  std_logic_vector (3 downto 0);
I1: in  std_logic_vector (3 downto 0);
I2: in  std_logic_vector (3 downto 0);
I3: in  std_logic_vector (3 downto 0);
Y: out  std_logic_vector (3 downto 0)
);


end  mpx_4_to_1;


architecture  function_table  of mpx_4_to_1 is

signal  temp: std_logic_vector (0 to 3) :=  "0000";

begin

with S select

Y  <= I0  when  "00",

I1  when  "01",
I2  when  "10",
I3  when  "11",
"XXXX" when  others;


end  function_table;