library ieee;
use ieee.std_logic_1164.all;

entity aula5 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
		  tamanhoEnderecoROM : natural := 9;
		  tamanhoInstrucaoROM : natural := 13;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
--    SW: in std_logic_vector(9 downto 0);
    PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
--    LEDR  : out std_logic_vector(9 downto 0);
	 SAIDA : out std_logic_vector(7 downto 0);
	 SAIDA_REG : out std_logic_vector(7 downto 0)
  );
end entity;


architecture arquitetura of 5 is

-- Faltam alguns sinais:
  signal chavesX_ULA_B       : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_REG1            : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_JMP             : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A          : std_logic_vector (larguraDados-1 downto 0);
  signal REG_END_RET         : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA           : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle     : std_logic_vector (5 downto 0);
  signal Endereco            : std_logic_vector (8 downto 0);
  signal proxPC              : std_logic_vector (8 downto 0);
  signal Chave_Operacao_ULA  : std_logic;
  signal CLK                 : std_logic;
  signal FlagJEQ             : std_logic;
  signal SelMUX_A            : std_logic;
  signal SelMUX_JMP          : std_logic_vector (1 downto 0);
  signal Habilita_A          : std_logic;
  signal Habilita_RET        : std_logic;
  signal Operacao_ULA        : std_logic_vector (1 downto 0);
  signal Ligacao_ROM_Decoder : std_logic_vector (3 downto 0);
  signal habLeituraMEM       : std_logic; 
  signal habEscritaMEM       : std_logic;
  signal saidaRAM_entradaMUX : std_logic_vector(7 downto 0);
  signal instrucao           : std_logic_vector(12 downto 0);
  
  constant SOMA : std_logic_vector (3 downto 0) := "0010";
  constant SUB  : std_logic_vector (3 downto 0) := "0011";
  constant LDA  : std_logic_vector (3 downto 0) := "0001";
  constant LDI  : std_logic_vector (3 downto 0) := "0100";
  constant STA  : std_logic_vector (3 downto 0) := "0101";

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX 2x1.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => saidaRAM_entradaMUX,
                 entradaB_MUX =>  instrucao(7 downto 0),
                 seletor_MUX => SelMUXA,
                 saida_MUX => MUX_REG1);
					  
-- O port map completo do MUX 4x1.
MUXJMP :  entity work.muxGenerico4x1  generic map (larguraDados => larguraDados)
	  port map( 	entradaA_MUX =>  proxPC,
                  entradaB_MUX =>  instrucao(7 downto 0),
                  entradaC_MUX =>  REG_END_RET,
                  entradaD_MUX =>  '0',
                  seletor_MUX => SelMUXJMP,
                  saida_MUX => MUX_JMP);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => '0');
			 
 -- O port map completo do Acumulador.
REG_RET : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => proxPC, DOUT => REG_END_RET, ENABLE => Habilita_RET, CLK => CLK, RST => '0');

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => tamanhoEnderecoROM)
          port map (DIN => MUX_JMP, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => tamanhoEnderecoROM, constante => 1)
        port map( entrada => Endereco, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_REG1, saida => Saida_ULA, seletor => Operacao_ULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => tamanhoInstrucaoROM, addrWidth => tamanhoEnderecoROM)
          port map (Endereco => Endereco, Dado => instrucao);
			 
DECODER : entity work.decoderInstru
          port map (Entrada => instrucao(12 downto 9), Saida => Sinais_Controle);

RAM1 : entity work.memoriaRAM   
          port map (addr => instrucao(7 downto 0), we => habEscritaMEM, re => habLeituraMEM, habilita => instrucao(8), dado_in => REG1_ULA_A, dado_out => saidaRAM_entradaMUX, clk => CLK);

selMUX        <= Sinais_Controle(5);
Habilita_A    <= Sinais_Controle(4);
Operacao_ULA  <= Sinais_Controle(3 downto 2);
habLeituraMEM <= Sinais_Controle(1);
habEscritaMEM <= Sinais_Controle(0);

SAIDA <= Saida_ULA;
SAIDA_REG <= REG1_ULA_A;

-- I/O

-- A ligacao dos LEDs:
--LEDR (9) <= SelMUX;
--LEDR (8) <= Habilita_A;
--LEDR (6) <= Operacao_ULA;
--LEDR (5) <= '0';    -- Apagado.
--LEDR (4) <= '0';    -- Apagado.
--LEDR (3 downto 0) <= REG1_ULA_A;

PC_OUT <= Endereco;

end architecture;