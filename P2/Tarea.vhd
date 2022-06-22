-------------------------------------------------------------------------------------------
-- Diseño: Tarea
-- Archivo: dec.vhd
-- Diseñador: Rodrigo Plauchú
-- Fecha: 31/08/2021
-- Versión: 1.0
-- Descripción: Decodificador 4 a 1 bits
-- Entradas | Salidas
-- A B C D | c
-- 0 0 0 0 | 0
-- 0 0 0 1 | 0 
-- 0 0 1 0 | 1
-- 0 0 1 1 | 0
-- 0 1 0 0 | 0
-- 0 1 0 1 | 0
-- 0 1 1 0 | 0
-- 0 1 1 1 | 0 
-- 1 0 0 0 | 0
-- 1 0 0 1 | 0
-- 1 0 1 0 | 0
-- 1 0 1 1 | 0
-- 1 1 0 0 | 1
-- 1 1 0 1 | 0
-- 1 1 1 0 | 1
-- 1 1 1 1 | 1
--------------------------------------------------------------------------------

library ieee; -- Biblioteca que contiene diferentes definiciones útiles para el diseño de circuitos digitales.
use ieee.std_logic_1164.all; -- Paquete que contiene la definición de los diferentes tipos de datos soportados por vhdl

-- Definición de la entidad. En una entidad se definen los puertos de entrada, salida y/o entrada/salida.
entity dec is
    port
    (
        -- Entradas
        cod: in std_logic_vector(3 downto 0); -- Valor del código a ser convertido
        -- Salidas
        deco: out std_logic_vector(0 downto 0) -- Valor obtenido con el decoficador
    );
end dec;

-- Definición de la arquitectura del circuito. Aquí se define el circuido digital.
architecture Behavioral of dec is
    -- Señales temporales
    signal A, B, C, D, c: std_logic:= '0';
begin
    -- Asignación de las señales de entrada
    A <= cod(3);
    B <= cod(2);
    C <= cod(1);
	 D <= cod(0);
    -- Descripción del comportamiento del circuito a través de ecuaciones booleanas
    c <= not(A) and not(B) and not(C) and not(D);
	 c <= not(A) and not(B) and not(C) and D;
	 c <= not(A) and not(B) and C and not(D);
	 c <= not(A) and not(B) and C and D;
	 c <= not(A) and B and not(C) and not(D);
	 c <= not(A) and B and not(C) and D;
	 c <= not(A) and B and C and not(D);
	 c <= not(A) and B and C and D;
	 c <= A and not(B) and not(C) and not(D);
	 c <= A and not(B) and not(C) and D;
	 c <= A and not(B) and C and not(D);
	 c <= A and not(B) and C and D;
	 c <= A and B and not(C) and not(D);
	 c <= A and B and not(C) and D;
	 c <= A and B and C and not(D);
	 c <= A and B and C and D;
	 
    
    -- Asignación de la salida del circuito. Se concatena cada uno de los valores para obtener un vector de salida.
    deco <= c;
end Behavioral;