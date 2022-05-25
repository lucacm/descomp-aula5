library ieee;
use ieee.std_logic_1164.all;

entity unidadeDeControle is
  port ( entrada : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(9 downto 0)
  );
end entity;

architecture comportamento of unidadeDeControle is

  constant R  : std_logic_vector(5 downto 0) := "000000";
  constant LW  : std_logic_vector(5 downto 0) := "100011";
  constant SW : std_logic_vector(5 downto 0) := "101011";
  constant BEQ : std_logic_vector(5 downto 0) := "000100";
  constant JMP  : std_logic_vector(5 downto 0) := "000010";
  
  begin
saida <= "0110000010" when entrada = R else
         "0011101000" when entrada = LW else
         "0001000100" when entrada = SW else
         "0000010001" when entrada = BEQ else
         "1000000000" when entrada = JMP else
         "0000000000";  -- NOP para os entradas Indefinidas
end architecture;