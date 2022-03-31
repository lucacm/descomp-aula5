library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( Entrada : in std_logic_vector(3 downto 0);
         Saida : out std_logic_vector(11 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant RET  : std_logic_vector(3 downto 0) := "1010"; 
  

  begin
saida <= "000000000000" when Entrada = NOP  else
         "000000100010" when Entrada = LDA  else
         "000000110010" when Entrada = SOMA else
         "000000101010" when Entrada = SUB  else
			"000001100000" when Entrada = LDI  else
			"000000000001" when Entrada = STA  else
			"010000000000" when Entrada = JMP  else
			"000010000000" when Entrada = JEQ  else
			"000000000100" when Entrada = CEQ  else
			"100100000000" when Entrada = JSR  else 
			"001000000000" when Entrada = RET  else
         "000000000000";  -- NOP para os opcodes Indefinidos
end architecture;