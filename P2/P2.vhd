-------------------------------------------------------------------------------------------
-- Diseño: Secuenciador
-- Archivo: dec.vhd
-- Diseñador: José de Jesús Morales Romero
-- Fecha: 24/08/2021
-- Versión: 1.0
-- Descripción: Decodificador 3 a 8 bits
-- Entradas | Salidas
-- A B C | f g h i j k l m
-- 0 0 0 | 1 0 0 0 0 0 0 0
-- 0 0 1 | 0 1 0 0 0 0 0 0
-- 0 1 0 | 0 0 1 0 0 0 0 0
-- 0 1 1 | 0 0 0 1 0 0 0 0
-- 1 0 0 | 0 0 0 0 1 0 0 0
-- 1 0 1 | 0 0 0 0 0 1 0 0
-- 1 1 0 | 0 0 0 0 0 0 1 0
-- 1 1 1 | 0 0 0 0 0 0 0 1
-------------------------------------------------------------------------------------------

library ieee; -- Biblioteca que contiene diferentes definiciones útiles para el diseño de circuitos digitales.
use ieee.std_logic_1164.all; -- Paquete que contiene la definición de los diferentes tipos de datos soportados por vhdl

-- Definición de la entidad. En una entidad se definen los puertos de entrada, salida y/o entrada/salida.
entity dec is
    port
    (
        -- Entradas
        cod: in std_logic_vector(2 downto 0); -- Valor del código a ser convertido
        -- Salidas
        deco: out std_logic_vector(7 downto 0) -- Valor obtenido con el decoficador
    );
end dec;

-- Definición de la arquitectura del circuito. Aquí se define el circuido digital.
architecture Behavioral of dec is
    -- Señales temporales
    signal a, b, c, f, g, h, i, j, k, l, m: std_logic:= '0';
begin
    -- Asignación de las señales de entrada
    a <= cod(2);
    b <= cod(1);
    c <= cod(0);
    -- Descripción del comportamiento del circuito a través de ecuaciones booleanas
    f <= not(a) and not(b) and not(c);
    g <= not(a) and not(b) and c;
    h <= not(a) and b and not(c);
    i <= not(a) and b and c;
    j <= a and not(b) and not(c);
    k <= a and not(b) and c;
    l <= a and b and not(c);
    m <= a and b and c;
    -- Asignación de la salida del circuito. Se concatena cada uno de los valores para obtener un vector de salida.
    deco <= f & g & h & i & j & k & l & m;
end Behavioral;