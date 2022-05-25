library ieee;
use ieee.std_logic_1164.all;

entity unidadeDeControleULA is
  port ( funct : in std_logic_vector(5 downto 0);
			ULAop : in std_logic_vector(1 downto 0);
         ULActrl : out std_logic_vector(2 downto 0) -- saida
  );
end entity;

architecture comportamento of unidadeDeControleULA is

  constant F_AND  : std_logic_vector(5 downto 0) := "100100";
  constant F_OR  : std_logic_vector(5 downto 0) := "100101";
  constant F_ADD : std_logic_vector(5 downto 0) := "100000";
  constant F_SUB  : std_logic_vector(5 downto 0) := "100010";
  constant F_SLT : std_logic_vector(5 downto 0) := "101010";

  begin
ULActrl <= "010" when (funct = F_ADD or ULAop = "00") else
         "001" when funct = F_OR else
         "000" when funct = F_AND else
         "110" when (funct = F_SUB or ULAop = "01") else
         "111" when funct = F_SLT else
         "000";  -- NOP para os entradas Indefinidas
end architecture;