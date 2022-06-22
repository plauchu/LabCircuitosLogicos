-------------------------------------------------------------------------------------------
-- Diseño: Secuenciador
-- Archivo: contador.vhd
-- Diseñador: José de Jesús Morales Romero
-- Fecha: 24/08/2021
-- Versión: 1.0
-- Descripción: Contador de datos, entrega los 3 bits más significativos
-------------------------------------------------------------------------------------------

library ieee; -- Biblioteca que contiene diferentes definiciones útiles para el diseño de circuitos digitales.
use ieee.std_logic_1164.all; -- Paquete que contiene la definición de los diferentes tipos de datos soportados por vhdl
use ieee.numeric_std.all; -- Paquete que contiene la definición del operador suma (+).

-- Definición de la entidad. En una entidad se definen los puertos de entrada, salida y/o entrada/salida.
entity contador is
    port
    (
        -- Entradas
        clk: in std_logic; -- Señal de reloj de entrada
        rst: in std_logic; -- Señal de reset de entrada
        -- Salidas
        cont: out std_logic_vector(2 downto 0) -- Contador de salida
    );
end contador;

-- Definición de la arquitectura del circuito. Aquí se define el circuido digital.
architecture Behavioral of contador is
    -- Señal temporal para el contador. Se utiliza un dato del tipo sin signo.
    signal conta: unsigned(10 downto 0):= (others => '0');

begin
    -- Process: es la definición del comportamiento de una parte del circuito. Este
    -- tiene comportamiento concurrente, es decir, en paralelo con respecto a otros
    -- processos.
    process(clk, rst, conta)
    begin
        if(rst = '0')then -- Se pregunta si se ha presionado el botón de reinicio.
            conta <= (others => '0'); -- Como se ha presionado, se reinicia la cuenta
        else -- Como no fue presionado, 
            if(rising_edge(clk))then -- Se pregunta si la entrada clk ha cambiado de estado (0 -> 1)
                conta <= conta + 1; -- Si fue así se aumenta el contador.
            end if;
        end if;
    end process;
    -- Asignación de la salidas. Se toman los 3 bits más significativos de la señal "conta".
    -- Debido a que el tipo de dato conta es "unsigned" se tiene que convertir a un tipo "std_logic_vector"
    cont <= std_logic_vector(conta(10 downto 9));
end Behavioral;