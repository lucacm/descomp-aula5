library ieee;
use ieee.std_logic_1164.all;

entity LogicaDesvio is
  port ( entrada : in std_logic_vector(4 downto 0);
         saida : out std_logic_vector(1 downto 0)
  );
end entity;

architecture comportamento of LogicaDesvio is

  constant JMP  : std_logic_vector(4 downto 0) := "10000";
  constant RET  : std_logic_vector(4 downto 0) := "01000";
  constant JSR  : std_logic_vector(4 downto 0) := "00100";
  constant JEQ  : std_logic_vector(4 downto 0) := "00011";
  

  begin
saida <= "01" when entrada = JMP else
         "10" when entrada = RET else
         "01" when entrada = JSR else
         "01" when entrada = JEQ else
         "00";  -- NOP para os entradas Indefinidas
end architecture;