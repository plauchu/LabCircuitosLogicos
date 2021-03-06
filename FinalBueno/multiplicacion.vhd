library ieee;
use ieee.std_logic_1164.all ;


entity multiplicacion is
	port
	(
		CLK, RESET: in std_logic;
		IE : in std_logic_vector(15 downto 0);
		I : out std_logic_Vector(15 downto 0)
	);
end multiplicacion;


architecture flujo1 of multiplicacion is
	signal R0   : std_logic_vector(2 downto 0) := "000";   	      --REGISTRO '0'  
	signal R1   : std_logic_vector(2 downto 0) := "001";    	  --REGISTRO '1'
	signal R2   : std_logic_vector(2 downto 0) := "010";          --REGISTRO '2'
	signal R3   : std_logic_vector(2 downto 0) := "011";    	  --REGISTRO '3'
	signal R4   : std_logic_vector(2 downto 0) := "100";	      --REGISTRO '4'
	signal R5   : std_logic_vector(2 downto 0) := "101";	      --REGISTRO '5'
	signal R6   : std_logic_vector(2 downto 0) := "110";	      --REGISTRO '6'
	signal R7   : std_logic_vector(2 downto 0) := "111";	      --REGISTRO '7'
	signal MOVA : std_logic_vector(6 downto 0) := "0000000";	  --RD, RA 
	signal INC  : std_logic_vector(6 downto 0) := "0000001";	  --RD, RA 
	signal ADD  : std_logic_vector(6 downto 0) := "0000010";	  --RD, RA, RB 
	signal SUB  : std_logic_vector(6 downto 0) := "0000101";	  --RD, RA, RB
	signal DEC  : std_logic_vector(6 downto 0) := "0000110";	  --RD, RA 
	signal ANDD : std_logic_vector(6 downto 0) := "0001000";	  --RD, RA, RB 
	signal OOR  : std_logic_vector(6 downto 0) := "0001001";	  --RD, RA, RB 
	signal ORX  : std_logic_vector(6 downto 0) := "0001010";	  --RD, RA, RB 
	signal NNO  : std_logic_vector(6 downto 0) := "0001011";	  --RD, RA 
	signal MOVB : std_logic_vector(6 downto 0) := "0001100";	  --RD, RB 
	signal SHR  : std_logic_vector(6 downto 0) := "0001101";	  --RD, RB 
	signal SHL  : std_logic_vector(6 downto 0) := "0001110";   --RD, RB 
	signal LDI  : std_logic_vector(6 downto 0) := "1001100";	  --RD, OP 
	signal ADI  : std_logic_vector(6 downto 0) := "1000010";	  --RD, RA, OP 
	signal LD   : std_logic_vector(6 downto 0) := "0010000";	  --RD, RA 
	signal ST   : std_logic_vector(6 downto 0) := "0100000";	  --RD, RB 
	signal BRZ  : std_logic_vector(6 downto 0) := "1100000";	  --RD, AD 
	signal BRN  : std_logic_vector(6 downto 0) := "1100001";	  --RD, AD 
	signal JMP  : std_logic_vector(6 downto 0) := "1110000";	  --RA 
	
	BEGIN
	
		R0 <= "000";          --REGISTRO '0'  
		R1 <= "001";    	  --REGISTRO '1'
		R2 <= "010";    	  --REGISTRO '2'
		R3 <= "011";    	  --REGISTRO '3'
		R4 <= "100";	      --REGISTRO '4'
		R5 <= "101";	      --REGISTRO '5'
		R6 <= "110";	      --REGISTRO '6'
		R7 <= "111";	      --REGISTRO '7'
		MOVA <= "0000000";	  --RD, RA 
		INC  <= "0000001";	  --RD, RA 
		ADD  <= "0000010";	  --RD, RA, RB 
		SUB  <= "0000101";	  --RD, RA, RB
		DEC  <= "0000110";	  --RD, RA 
		ANDD <= "0001000";	  --RD, RA, RB 
		OOR  <= "0001001";	  --RD, RA, RB 
		ORX  <= "0001010";	  --RD, RA, RB 
		NNO  <= "0001011";	  --RD, RA 
		MOVB <= "0001100";	  --RD, RB 
		SHR  <= "0001101";	  --RD, RB 
		SHL  <= "0001110";    --RD, RB 
		LDI  <= "1001100";	  --RD, OP 
		ADI  <= "1000010";	  --RD, RA, OP 
		LD   <= "0010000";	  --RD, RA 
		ST   <= "0100000";	  --RD, RB 
		BRZ  <= "1100000";	  --RD, AD 
		BRN  <= "1100001";	  --RD, AD 
		JMP   <= "1110000";	  --RA
	
		I <=  "0000000"   &    O"0"  &    O"0"   &    O"0"   WHEN RESET = '1' ELSE

-- ??ste programa carga dos valores de data memory a los registros R0 y R1 para multiplicar
-- El resultado se guarda en R3
------------------------ STORE-DISPLAY TEST --------------------------------------	
			-- Tomar los valores A y B de la memoria
			LDI      &    O"0"  &    O"0"   &    O"0"   when IE = X"0000" else    -- Guardar 0 en R0 (indice de la mem de A)
			LD       &    O"0"  &    O"0"   &    O"0"   when IE = X"0001" else 	 -- Guardar A en R0
			LDI      &    O"1"  &    O"0"   &    O"1"   when IE = X"0002" else    -- Guardar 1 en R1 (indice de la mem de B)
			LD       &    O"1"  &    O"1"   &    O"0"   when IE = X"0003" else	 -- Guardar B en R1
			
			-- Variables auxiliares
			LDI		&	  O"2"  &    O"1"   &    O"0"   when IE = X"0004" else    -- Guardar answer = 0 en R2
			LDI      &    O"3"  &    O"0"   &    O"1"   when IE = X"0005" else	 -- Guardar 1 en R3 para la condicion
			SUB      &    O"4"  &    O"1"   &    O"3"   when IE = X"0006" else 	 -- Guardar en 4 (B - 1) para la condicion
			
			-- Condicion
			BRN		&	  O"4"  &	 O"4"	  &	 O"3"	  when IE = X"0007" else	 -- Bandera de salida del while
			
			-- Condicion B % 2
			ANDD		&	  O"5"  &    O"1"   &    O"3"   when IE = X"0008" else	 -- AND de B y 1 para saber si es par
			BRZ      &    O"0"  &    O"5"   &    O"2"   when IE = X"0009" else	 -- Revisa si B % 2 == 0
			
			-- Suma de ANS + A
			ADD		&    O"2"  &	 O"2"   &    O"0"   when IE = X"000A" else	 -- Se hace la suma
			
			-- Fuera del IF
			SHL      &    O"0"  &    O"0"   &    O"0"   when IE = X"000B" else	 -- Shiftleft para multiplicar X por 2
			SHR      &    O"1"  &    O"1"   &    O"1"   when IE = X"000C" else	 -- Shiftright para dividir Y entre 2
			
			-- Ciclo
			LDI      &    O"6"  &    O"0"   &    O"6"   when IE = X"000D" else	 -- Guardar el numero a aplicar en el JUMP
			JMP      &    O"0"  &    O"6"   &    O"0"   when IE = X"000E" else	 -- Ir al registro 6
------------------------ STORE-DISPLAY TEST --------------------------------------	
	
			"0101010" & "101" & "010" & "101" ;  

end flujo1;