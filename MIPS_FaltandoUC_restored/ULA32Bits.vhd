library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA32Bits is
    generic ( larguraDados : natural := 8 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(2 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		flag_zero : out STD_LOGIC

    );
end entity;

architecture comportamento of ULA32Bits is
	
	signal Carry_In, overflow, B_invertido : STD_LOGIC;
	signal sinal_saida, sinal_CarryOut : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal seletor1Bit : STD_LOGIC_VECTOR(2 downto 0);
	
    begin
      
		seletor1Bit <= "010" when (seletor = "110" or seletor = "111") else seletor;
		Carry_In, B_invertido    <=  '1'  when (seletor = "110" or seletor = "111") else '0';
		
		
		ULA0 : entity work.ULA1Bit
			 port map(entradaA => entradaA(0), entradaB => entradaB(0), Carry_In => Carry_In, Carry_Out => sinal_CarryOut(0), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(0));
		ULA1 : entity work.ULA1Bit
			 port map(entradaA => entradaA(1), entradaB => entradaB(1), Carry_In => sinal_CarryOut(0), Carry_Out => sinal_CarryOut(1), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(1)); 
		ULA2 : entity work.ULA1Bit
			 port map(entradaA => entradaA(2), entradaB => entradaB(2), Carry_In => sinal_CarryOut(1), Carry_Out => sinal_CarryOut(2), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(2)); 
		ULA3 : entity work.ULA1Bit
			 port map(entradaA => entradaA(3), entradaB => entradaB(3), Carry_In => sinal_CarryOut(2), Carry_Out => sinal_CarryOut(3), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(3)); 
		ULA4 : entity work.ULA1Bit
			 port map(entradaA => entradaA(4), entradaB => entradaB(4), Carry_In => sinal_CarryOut(3), Carry_Out => sinal_CarryOut(4), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(4)); 
		ULA5 : entity work.ULA1Bit
			 port map(entradaA => entradaA(5), entradaB => entradaB(5), Carry_In => sinal_CarryOut(4), Carry_Out => sinal_CarryOut(5), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(5)); 
		ULA6 : entity work.ULA1Bit
			 port map(entradaA => entradaA(6), entradaB => entradaB(6), Carry_In => sinal_CarryOut(5), Carry_Out => sinal_CarryOut(6), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(6)); 
		ULA7 : entity work.ULA1Bit
			 port map(entradaA => entradaA(7), entradaB => entradaB(7), Carry_In => sinal_CarryOut(6), Carry_Out => sinal_CarryOut(7), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(7)); 
		ULA8 : entity work.ULA1Bit
			 port map(entradaA => entradaA(8), entradaB => entradaB(8), Carry_In => sinal_CarryOut(7), Carry_Out => sinal_CarryOut(8), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(8)); 
		ULA9 : entity work.ULA1Bit
			 port map(entradaA => entradaA(9), entradaB => entradaB(9), Carry_In => sinal_CarryOut(8), Carry_Out => sinal_CarryOut(9), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(9)); 
		ULA10 : entity work.ULA1Bit
			 port map(entradaA => entradaA(10), entradaB => entradaB(10), Carry_In => sinal_CarryOut(9), Carry_Out => sinal_CarryOut(10), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(10)); 
		ULA11 : entity work.ULA1Bit
			 port map(entradaA => entradaA(11), entradaB => entradaB(11), Carry_In => sinal_CarryOut(10), Carry_Out => sinal_CarryOut(11), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(11)); 
		ULA12 : entity work.ULA1Bit
			 port map(entradaA => entradaA(12), entradaB => entradaB(12), Carry_In => sinal_CarryOut(11), Carry_Out => sinal_CarryOut(12), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(12)); 
		ULA13 : entity work.ULA1Bit
			 port map(entradaA => entradaA(13), entradaB => entradaB(13), Carry_In => sinal_CarryOut(12), Carry_Out => sinal_CarryOut(13), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(13)); 
		ULA14 : entity work.ULA1Bit
			 port map(entradaA => entradaA(14), entradaB => entradaB(14), Carry_In => sinal_CarryOut(13), Carry_Out => sinal_CarryOut(14), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(14)); 
		ULA15 : entity work.ULA1Bit
			 port map(entradaA => entradaA(15), entradaB => entradaB(15), Carry_In => sinal_CarryOut(14), Carry_Out => sinal_CarryOut(15), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(15)); 
		ULA16 : entity work.ULA1Bit
			 port map(entradaA => entradaA(16), entradaB => entradaB(16), Carry_In => sinal_CarryOut(15), Carry_Out => sinal_CarryOut(16), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(16)); 
		ULA17 : entity work.ULA1Bit
			 port map(entradaA => entradaA(17), entradaB => entradaB(17), Carry_In => sinal_CarryOut(16), Carry_Out => sinal_CarryOut(17), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(17)); 
		ULA18 : entity work.ULA1Bit
			 port map(entradaA => entradaA(18), entradaB => entradaB(18), Carry_In => sinal_CarryOut(17), Carry_Out => sinal_CarryOut(18), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(18)); 
		ULA19 : entity work.ULA1Bit
			 port map(entradaA => entradaA(19), entradaB => entradaB(19), Carry_In => sinal_CarryOut(18), Carry_Out => sinal_CarryOut(19), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(19)); 
		ULA20 : entity work.ULA1Bit
			 port map(entradaA => entradaA(20), entradaB => entradaB(20), Carry_In => sinal_CarryOut(19), Carry_Out => sinal_CarryOut(20), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(20)); 
		ULA21 : entity work.ULA1Bit
			 port map(entradaA => entradaA(21), entradaB => entradaB(21), Carry_In => sinal_CarryOut(20), Carry_Out => sinal_CarryOut(21), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(21)); 
		ULA22 : entity work.ULA1Bit
			 port map(entradaA => entradaA(22), entradaB => entradaB(22), Carry_In => sinal_CarryOut(21), Carry_Out => sinal_CarryOut(22), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(22)); 
		ULA23 : entity work.ULA1Bit
			 port map(entradaA => entradaA(23), entradaB => entradaB(23), Carry_In => sinal_CarryOut(22), Carry_Out => sinal_CarryOut(23), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(23)); 
		ULA24 : entity work.ULA1Bit
			 port map(entradaA => entradaA(24), entradaB => entradaB(24), Carry_In => sinal_CarryOut(23), Carry_Out => sinal_CarryOut(24), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(24)); 
		ULA25 : entity work.ULA1Bit
			 port map(entradaA => entradaA(25), entradaB => entradaB(25), Carry_In => sinal_CarryOut(24), Carry_Out => sinal_CarryOut(25), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(25)); 
		ULA26 : entity work.ULA1Bit
			 port map(entradaA => entradaA(26), entradaB => entradaB(26), Carry_In => sinal_CarryOut(25), Carry_Out => sinal_CarryOut(26), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(26)); 
		ULA27 : entity work.ULA1Bit
			 port map(entradaA => entradaA(27), entradaB => entradaB(27), Carry_In => sinal_CarryOut(26), Carry_Out => sinal_CarryOut(27), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(27)); 
		ULA28 : entity work.ULA1Bit
			 port map(entradaA => entradaA(28), entradaB => entradaB(28), Carry_In => sinal_CarryOut(27), Carry_Out => sinal_CarryOut(28), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(28)); 
		ULA29 : entity work.ULA1Bit
			 port map(entradaA => entradaA(29), entradaB => entradaB(29), Carry_In => sinal_CarryOut(28), Carry_Out => sinal_CarryOut(29), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(29)); 
		ULA30 : entity work.ULA1Bit
			 port map(entradaA => entradaA(30), entradaB => entradaB(30), Carry_In => sinal_CarryOut(29), Carry_Out => sinal_CarryOut(30), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(30)); 
		ULA31 : entity work.ULA1Bit
			 port map(entradaA => entradaA(31), entradaB => entradaB(31), Carry_In => sinal_CarryOut(30), Carry_Out => sinal_CarryOut(31), A_invertido => '0', B_invertido => B_invertido, seletor => seletor1Bit, saida => sinal_saida(31)); 

			 
		overflow <= not(sinal_saida(31) and 
						    sinal_saida(30) and 
							 sinal_saida(29) and 
							 sinal_saida(28) and 
							 sinal_saida(27) and 
							 sinal_saida(26) and 
							 sinal_saida(25) and 
							 sinal_saida(24) and 
							 sinal_saida(23) and 
							 sinal_saida(22) and 
							 sinal_saida(21) and 
							 sinal_saida(20) and 
							 sinal_saida(19) and 
							 sinal_saida(18) and 
							 sinal_saida(17) and 
							 sinal_saida(16) and 
							 sinal_saida(15) and 
							 sinal_saida(14) and 
							 sinal_saida(13) and 
							 sinal_saida(12) and 
							 sinal_saida(11) and 
							 sinal_saida(10) and 
							 sinal_saida(9)  and 
							 sinal_saida(8)  and  
							 sinal_saida(7)  and 
							 sinal_saida(6)  and 
							 sinal_saida(5)  and 
							 sinal_saida(4)  and 
							 sinal_saida(3)  and 
							 sinal_saida(2)  and 
							 sinal_saida(1)  and 
							 sinal_saida(0))
							 
		saida <= ("0000000000000000000000000000000" & (sinal_saida(31) xor overflow)) when (seletor = "111") else sinal_saida;
		
		flag_zero <= not(sinal_saida(31) or 
						    sinal_saida(30)  or 
							 sinal_saida(29)  or 
							 sinal_saida(28)  or
							 sinal_saida(27)  or 
							 sinal_saida(26)  or 
							 sinal_saida(25)  or
							 sinal_saida(24)  or 
							 sinal_saida(23)  or 
							 sinal_saida(22)  or 
							 sinal_saida(21)  or 
							 sinal_saida(20)  or 
							 sinal_saida(19)  or 
							 sinal_saida(18)  or 
							 sinal_saida(17)  or 
							 sinal_saida(16)  or 
							 sinal_saida(15)  or 
							 sinal_saida(14)  or 
							 sinal_saida(13)  or 
							 sinal_saida(12)  or 
							 sinal_saida(11)  or 
							 sinal_saida(10)  or 
							 sinal_saida(9)   or 
							 sinal_saida(8)   or  
							 sinal_saida(7)   or 
							 sinal_saida(6)   or 
							 sinal_saida(5)   or 
							 sinal_saida(4)   or 
							 sinal_saida(3)   or
							 sinal_saida(2)   or 
							 sinal_saida(1)   or 
							 sinal_saida(0))

end architecture;