library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity CPU is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
				larguraDadosROM : natural := 32;
				larguraEnderecoROM : natural := 32;
				larguraDadosImediato : natural := 16;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
	 --Escrita_REG : in std_logic;
	 --Operacao : std_logic_vector(2 downto 0);
	 KEY: in std_logic_vector(3 downto 0);
	 SW: in std_logic_vector(9 downto 0);
	 LEDR: out std_logic_vector (9 downto 0);
	 HEX0 : out std_logic_vector(6 downto 0);
    HEX1 : out std_logic_vector(6 downto 0);
    HEX2 : out std_logic_vector(6 downto 0);
    HEX3 : out std_logic_vector(6 downto 0);
    HEX4 : out std_logic_vector(6 downto 0);
    HEX5 : out std_logic_vector(6 downto 0);

-- sinais de teste
	ula_teste : out std_logic_vector(31 downto 0);
	instrucao_teste : out std_logic_vector(31 downto 0);
	pc_teste : out std_logic_vector(31 downto 0);
	imediato_teste : out std_logic_vector(31 downto 0);
	ULA_ctrl_teste : out std_logic_vector(2 downto 0)

  );
  
end entity;

architecture arquitetura of CPU is

  signal Inst : std_logic_vector (larguraDadosROM-1 downto 0);
  
  signal entradaA_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal entradaB_ULA : std_logic_vector (larguraDados-1 downto 0);
  
  signal Dado_Lido_Reg_1 : std_logic_vector (larguraDados-1 downto 0);
  signal Dado_Lido_Reg_2 : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ROM : std_logic_vector (larguraDadosROM-1 downto 0); -- INSTRUCAO
  --signal Sinais_Controle : std_logic_vector (11 downto 0);
  signal endereco : std_logic_vector (larguraEnderecoROM-1 downto 0); --SAIDA PC
  signal somador : std_logic_vector (larguraEnderecoROM-1 downto 0);
  signal CLK : std_logic;
  --signal Habilita_REG : std_logic;
  signal Habilita_FF : std_logic;
  --signal Operacao_ULA : std_logic_vector(2 downto 0);
  signal flag_ULA : std_logic;
  signal SigExt : std_logic_vector(31 downto 0); -- (Imediato)
  signal Dado_Lido_RAM : std_logic_vector(31 downto 0);
  signal Sinais_Controle : std_logic_vector(9 downto 0); -- vetor que sai da uc
  signal saida_MUX_PC : std_logic_vector(31 downto 0); -- criei pq vc n tinha criado
  signal saida_MUX_ULA : std_logic_vector(31 downto 0); -- criei pq vc n tinha criado
  signal saida_MUX_PROXPC : std_logic_vector(31 downto 0); -- criei pq vc n tinha criado
  signal saida_MUX_BANCOREG : std_logic_vector(31 downto 0);
  signal saida_MUX_END : std_logic_vector(4 downto 0);
  
  
  -- sinais que saem da unidade de controle
  signal muxPC4BEQJmp : std_logic;
  signal muxRtRd : std_logic;
  signal habEscritReg : std_logic;
  signal muxRtImediato : std_logic;
  signal ULAop : std_logic_vector (1 downto 0);
  signal muxULAmem : std_logic;
  signal BEQ : std_logic;
  signal habLeituraMEM : std_logic;
  signal habEscritaMEM : std_logic;
  
  -- sinal q sai da uc ULA
  signal ULActrl : std_logic_vector (2 downto 0);
  
  -- sinal que sai do mux e vai para os displays e leds
  signal sinalDisplay : std_logic_vector(31 downto 0);
  
 

begin

CLK <= CLOCK_50;

-- O port map completo do Program Counter:			 
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecoROM)
          port map (DIN => saida_MUX_PROXPC, DOUT => endereco, ENABLE => '1', CLK => CLK, RST => '0');
			 
-- O port map completo do somador que incrementa o endereço do Program Counter:			 			 
somaConstante :  entity work.somaConstante  generic map (larguraDados => larguraEnderecoROM, constante => 4)
        port map( entrada => endereco, saida => somador);
		  
-- Port map ROM:
ROM : entity work.ROMMIPS
          port map (Endereco => endereco, Dado => Saida_ROM, clk => CLK);

-- Port map ROM:
-- FALTA COMPLETAR!!! (não sei oq colocar no habilita só falta ele)
RAM : entity work.RAMMIPS
          port map (clk => CLK, Endereco => Saida_ULA, Dado_in => entradaB_ULA, Dado_out => Dado_Lido_RAM, we => habEscritaMEM, re => habLeituraMEM);
			 
-- O port map completo do Banco de registradores.
BancoRegistradores : entity work.bancoRegistradores
          port map (clk => CLK, enderecoA => Saida_ROM(25 downto 21), enderecoB => Saida_ROM(20 downto 16), 
			 enderecoC => Saida_ROM(15 downto 11), dadoEscritaC => saida_MUX_BANCOREG, escreveC => habEscritReg, 
			 saidaA => Dado_Lido_Reg_1, saidaB => Dado_Lido_Reg_2);
			 
-- O port map completo da ULA:
-- PRECISA MUDAR O "seletor" (mudei, coloquei o novo sinal com 3 bits se precisar mudar pra 4 tem q mudar na unidadeDeControleULA pra colocar um bit 0 a mais na frente)
-- mudei os sinais tb
ULA : entity work.ULA32Bits  generic map(larguraDados => larguraDados)
          port map (entradaA => saida_MUX_ULA, entradaB => Dado_Lido_Reg_2, saida => Saida_ULA, 
			 seletor => ULActrl, flag_zero => flag_ULA);

-- O port map do extensor de sinal		 
EXT_SIN : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => larguraDadosImediato, larguraDadoSaida => larguraDados)
	port map (estendeSinal_IN => Saida_ROM(15 downto 0), estendeSinal_OUT =>  SigExt);

-- O port map da unidade de lógica (é um decodificador genérico)
-- FALTA FAZER A "saida"
-- entrada é o opcode
UNI_LOG :  entity work.unidadeDeControle
        port map( entrada => Saida_ROM(31 downto 26),
                 saida => Sinais_Controle);
					  
UNI_LOG_ULA :  entity work.unidadeDeControleULA
        port map( funct => Inst(5 downto 0) , 
						ULAop => ULAop,
                 ULActrl => ULActrl);			  

MUX_PC : entity work.muxGenerico2x1 generic map(larguraDados =>32)
			port map(entradaA_MUX => somador,
						entradaB_MUX => std_logic_vector(shift_left(signed(SigExt),2) + signed(somador)),
						seletor_MUX => (BEQ and flag_ULA),
						saida_MUX => saida_MUX_PC);
						
MUX_ULA : entity work.muxGenerico2x1 generic map(larguraDados =>32)
			 port map(entradaA_MUX => Dado_Lido_Reg_2,
						 entradaB_MUX => SigExt,
						 seletor_MUX  => muxRtImediato,
						 saida_MUX    => saida_MUX_ULA);

MUX_BANCOREG : entity work.muxGenerico2x1 generic map(larguraDados =>32)
					port map(entradaA_MUX => Saida_ULA,
								entradaB_MUX => Dado_Lido_RAM,
								seletor_MUX  => muxULAmem,
								saida_MUX    => saida_MUX_BANCOREG);
								
MUX_END      : entity work.muxGenerico2x1 generic map(larguraDados =>5)
					port map(entradaA_MUX => Saida_ROM(20 downto 16),
								entradaB_MUX => Saida_ROM(15 downto 11),
								seletor_MUX  => muxRtRd,
								saida_MUX    => saida_MUX_END);
								
MUX_PROXPC   : entity work.muxGenerico2x1 generic map(larguraDados =>32)
					port map(entradaA_MUX => saida_MUX_PC,
								entradaB_MUX => (somador(31 downto 28) & (Saida_ROM(25 downto 0)) & "00"),
								seletor_MUX  => muxPC4BEQJmp,
								saida_MUX    => saida_MUX_PROXPC);
								
MUX_HEX :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => endereco, -- saida pc
                 entradaB_MUX =>  Saida_ULA, -- saida ula
                 seletor_MUX => SW(0),
                 saida_MUX => sinalDisplay);

DISP_HEX0 :  entity work.conversorHex7Seg
		port map(dadoHex => sinalDisplay(3 downto 0),
					apaga =>  '0',
					negativo => '0',
					overFlow =>  '0',
					saida7seg => HEX0);

DISP_HEX1 :  entity work.conversorHex7Seg
		port map(dadoHex => sinalDisplay(7 downto 4),
					apaga =>  '0',
					negativo => '0',
					overFlow =>  '0',
					saida7seg => HEX1);

DISP_HEX2 :  entity work.conversorHex7Seg
		port map(dadoHex => sinalDisplay(11 downto 8),
					apaga =>  '0',
					negativo => '0',
					overFlow =>  '0',
					saida7seg => HEX2);

DISP_HEX3 :  entity work.conversorHex7Seg
		port map(dadoHex => sinalDisplay(15 downto 12),
					apaga =>  '0',
					negativo => '0',
					overFlow =>  '0',
					saida7seg => HEX3);

DISP_HEX4 :  entity work.conversorHex7Seg
		port map(dadoHex => sinalDisplay(19 downto 16),
					apaga =>  '0',
					negativo => '0',
					overFlow =>  '0',
					saida7seg => HEX4);
			  
DISP_HEX5 :  entity work.conversorHex7Seg
		port map(dadoHex => sinalDisplay(23 downto 20),
					apaga =>  '0',
					negativo => '0',
					overFlow =>  '0',
					saida7seg => HEX5);			
			  
-- LEDS
LEDR(3 downto 0) <= sinalDisplay(27 downto 24);
LEDR(7 downto 4) <= sinalDisplay(31 downto 28);

-- útil?	 
--Habilita_REG <= Escrita_REG;
--Operacao_ULA <= Operacao;
-- 

-- instrução
Inst <= Saida_ROM;

-- sinais da unidade de controle fd
muxPC4BEQJmp <= Sinais_Controle(9);
muxRtRd <= Sinais_Controle(8);
habEscritReg <= Sinais_Controle(7);
muxRtImediato <= Sinais_Controle(6);
muxULAmem <= Sinais_Controle(5);
BEQ <= Sinais_Controle(4);
habLeituraMEM <= Sinais_Controle(3);
habEscritaMEM <= Sinais_Controle(2);
ULAop <= Sinais_Controle(1 downto 0);

-- sinais de teste
ula_teste <= Saida_ULA;
pc_teste <= endereco;
instrucao_teste <= Inst;
imediato_teste <= SigExt;
ULA_ctrl_teste <= ULActrl;

			 
end architecture;
