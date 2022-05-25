library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 32 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(2 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0)

    );
end entity;

architecture comportamento of ULASomaSub is
	constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');

   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal passa : 	 STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal or_ula   :     STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal not_ula  :     STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal and_ula  :     STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal xor_ula  :     STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	
    begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		or_ula       <= entradaA or entradaB;
		and_ula      <= entradaA and entradaB;
		not_ula      <= not entradaA;
		xor_ula      <= entradaA xor entradaB;
		
      saida <= soma      when (seletor = "000") else 
					subtracao when (seletor = "001") else
					or_ula       when (seletor = "010") else
					and_ula      when (seletor = "011") else
					not_ula      when (seletor = "100") else
					xor_ula      when (seletor = "101") else
					entradaA  when (seletor = "110") else
					entradaB;
					

end architecture;