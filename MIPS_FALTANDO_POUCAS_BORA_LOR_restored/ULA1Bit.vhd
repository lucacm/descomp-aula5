library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA1Bit is
    generic ( larguraDados : natural := 2 );
    port (
      entradaA, entradaB, Carry_In, A_invertido, B_invertido:  in STD_LOGIC;
      seletor:  in STD_LOGIC_VECTOR(2 downto 0);
		Carry_Out, saida : out STD_LOGIC
    );
end entity;

architecture comportamento of ULA1Bit is
	
   signal signal_A, signal_B, soma, or_ula, and_ula  :  STD_LOGIC;
	
	-- sinais somador
	
	signal AxorB, C_INxorAB, AandB, AxBandC : STD_LOGIC;
	
	
    begin
		
		-- MUX inverte A e B
		signal_A <= std_logic(entradaA) when (A_invertido = '0') else
		not(std_logic(entradaA));
		
		signal_B <= std_logic(entradaB) when (B_invertido = '0') else
		not(std_logic(entradaB));
		
		
		
		-- Somador
		AxorB      <= signal_A xor signal_B;
		AandB      <= signal_A and signal_B;
		AxBandC    <= AxorB    and Carry_In;
		
		soma 		  <= AxorB xor Carry_In;   
		Carry_Out  <= AxBandC or AandB;
		
		
		and_ula    <= signal_A and signal_B;
		or_ula     <= signal_A or  signal_B;
	
		
		
		
 
		
      saida <= and_ula when (seletor = "000") else
					or_ula  when (seletor = "001") else
					soma    when (seletor = "010") else
					'Z';
					

end architecture;