-------------------------------------------------------------------------------------
-- Proyecto: MuxDeco
-- Archivo: Generador.vhd
-- Diseñador: M. en C. José de Jesús Morales Romero
-- Versión: 1.0
-- Fecha: 24/08/2021
-- Descripción: Generador de código binario de 2 bits.
-------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Generador is
    generic
    (
        nBits: integer:= 30 -- Cantidad de bits para el contador
    );
    port
    (
        -- Entradas
        clk: in std_logic;
        rst: in std_logic;
        -- Salidas
        cod: out std_logic_vector(1 downto 0)
    );
end Generador;

architecture Behavioral of Generador is
    -- Señales temporales
    signal contador: unsigned(nBits - 1 downto 0):= (others => '0');

begin
    process(clk, rst, contador)
    begin
        if(rising_edge(clk))then
            if(rst = '0')then
                contador <= (others => '0');
            else
                contador <= contador + 1;
            end if;
        end if;
    end process;

    cod <= std_logic_vector(contador(nBits - 1 downto nBits - 2));
    
end Behavioral;