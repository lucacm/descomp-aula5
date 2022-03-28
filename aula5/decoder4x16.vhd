
library IEEE;
use IEEE.std_logic_1164.all;

entity decoder4x16 is
            port(D3, D2, D1, D0 : in std_logic;
                 opcode: in std_logic_vector(3 downto 0);
                 Y : out std_logic
            );
end entity;

architecture dec4x16 of decoder4x16 is
begin
    Y <= "0010" when (opcode = CLRA) else
         "1101" when (opcode = LDA) else
         "1101" when (opcode = SOMA) else
         "1100" when (opcode = SUB) else
         '0';
end architecture;