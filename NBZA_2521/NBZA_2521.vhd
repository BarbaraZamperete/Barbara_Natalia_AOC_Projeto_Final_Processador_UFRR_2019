LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY NBSoulessProcessor IS
		PORT(
		clock 					: IN std_logic; 
		out_pc 					: OUT std_logic_vector(7 DOWNTO 0);
		out_extensor_sinal 	: OUT std_logic_vector(7 DOWNTO 0);
		mandown 					: OUT std_logic_vector(7 DOWNTO 0);
		enterrom 				: OUT std_logic_vector(7 DOWNTO 0);
		out_opcode 				: OUT std_logic_vector(2 DOWNTO 0);
		regA 						: OUT std_logic_vector(7 DOWNTO 0);
		regb 						: OUT std_logic_vector(7 DOWNTO 0);
		out_multiplex1 		: OUT std_logic_vector(7 DOWNTO 0);
		out_multiplex2 		: OUT std_logic_vector(7 DOWNTO 0);
		out_multiplex3 		: OUT std_logic_vector(7 DOWNTO 0);
		out_multiplex4 		: OUT std_logic_vector(7 DOWNTO 0);
		out_branch 				: OUT std_logic;
		out_readmem 			: OUT std_logic;
		out_writemem 			: OUT std_logic;
		out_ula2 				: OUT std_logic;
		out_writereg 			: OUT std_logic;
		out_mem2reg 			: OUT std_logic;
		out_ulaop 				: OUT  std_logic_vector(2 DOWNTO 0);
		out_ram 					: OUT std_logic_vector(7 DOWNTO 0);
		out_zero 				: OUT std_logic;
		out_ula_result 		: OUT std_logic_vector(7 DOWNTO 0));
	END NBSoulessProcessor;

ARCHITECTURE behavior OF NBSoulessProcessor IS

	COMPONENT PC IS
		PORT(
		clocksys 				: IN  STD_LOGIC;  
		pcin 						: IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		pcout 					: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Somador IS
		PORT(
		SomaIn 					: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		Soma2						: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		SomaOut 					: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT ROM IS
		PORT(
		address 					: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		saida 					: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Extensor IS
		PORT(
		ENTRADA1 					: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		ENTRADA2					: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		SAIDA   					: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		extend 					: IN STD_LOGIC);
	
	END COMPONENT;
	
	COMPONENT Multiplexador IS
		PORT(
		A, B 						: IN std_logic_vector(7 DOWNTO 0);
		S1							: IN std_logic;
		R 							: OUT std_logic_vector(7 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Registradores IS
		PORT(
		ClockSys					: IN std_logic;
		RegWrite					: IN std_logic;
		RegA						: OUT std_logic_vector (7 downto 0);
		RegB						: OUT std_logic_vector (7 downto 0); 
		Data						: IN std_logic_vector  (7 downto 0); -- Write Back
		ReadReg1					: IN std_logic_vector (0 DOWNTO 0);
		ReadReg2					: IN std_logic_vector (0 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT ULA IS 
		PORT(
		a, b 						: IN std_logic_vector(7 DOWNTO 0);
		ula_ctrl  				: IN std_logic_vector(2 DOWNTO 0);
		ula_result				: OUT std_logic_vector(7 DOWNTO 0);
		zero 						: OUT std_logic);
	END COMPONENT;
	
	COMPONENT RAM IS
		PORT(
		entradaDATA 			: IN std_logic_vector(7 DOWNTO 0);
		saidaDATA   			: OUT std_logic_vector(7 DOWNTO 0);
		endereco    			: IN std_logic_vector(7 DOWNTO 0);
		writememory				: IN STD_LOGIC;
		readmemory 				: IN STD_LOGIC;
		clocksys					: IN STD_LOGIC);
	END COMPONENT;
	
	COMPONENT PortaAND IS
		PORT(
		A, B 	: IN std_logic;
		R 		: OUT std_logic);
	END COMPONENT;
	
	COMPONENT unidade_controle IS
		PORT(
		opcode 					: IN std_logic_vector(2 DOWNTO 0);
		funct 					: IN std_logic_vector (2 downto 0);
		ulaop 					: OUT std_logic_vector(2 DOWNTO 0);
		mem2reg					: OUT std_logic;		
		branch 					: OUT std_logic;
		readmem 					: OUT std_logic;
		writemem 				: OUT std_logic;
		ula2						: OUT std_logic;
		writereg 				: OUT std_logic;
		extend					: OUT std_logic;
		joomp 					: OUT std_logic;
		writereg2 				: OUT std_logic);
	END COMPONENT;
	


	SIGNAL pcout2 				: std_logic_vector(7 DOWNTO 0);
	SIGNAL in_pc  				: std_logic_vector(7 DOWNTO 0);
	SIGNAL addpcout 			: std_logic_vector(7 DOWNTO 0);
	SIGNAL add_pc2_out 		: std_logic_vector(7 DOWNTO 0);
	SIGNAL rom_out 			: std_logic_vector(7 DOWNTO 0);
	SIGNAL extensor_out 		: std_logic_vector(7 DOWNTO 0);
	SIGNAL multiplex1_out 	: std_logic_vector(7 DOWNTO 0);
	SIGNAL multiplex2_out 	: std_logic_vector(7 DOWNTO 0);
	SIGNAL multiplex3_out 	: std_logic_vector(7 DOWNTO 0);
	SIGNAL multiplex5_out 	: std_logic_vector(7 DOWNTO 0);
	SIGNAL regA_out 			: std_logic_vector(7 DOWNTO 0);
	SIGNAL regB_out 			: std_logic_vector(7 DOWNTO 0);
	SIGNAL ula_out 			: std_logic_vector(7 DOWNTO 0);
	SIGNAL ulazero_out 		: std_logic;
	SIGNAL ram_out 			: std_logic_vector(7 DOWNTO 0);
	SIGNAL AAND_out 			: std_logic;
	SIGNAL ulaop 				: std_logic_vector(2 DOWNTO 0);
	SIGNAL mem2reg 			: std_logic;		
	SIGNAL branch 				: std_logic;
	SIGNAL readmem 			: std_logic;
	SIGNAL writemem 			: std_logic;
	SIGNAL ula2					: std_logic;
	SIGNAL writereg 			: std_logic;
	SIGNAL extend				: std_logic;
	SIGNAL joomp 				: std_logic;
	SIGNAL writereg2 			: std_logic;
BEGIN


							
	add1					: Somador	PORT MAP(
								SomaIn => add_pc2_out,
								Soma2 => "00000001",
								SomaOut => add_pc2_out
								);
				
	memory_rom			: ROM PORT MAP(
						    address => add_pc2_out,
							 saida => rom_out);

	extensordesinal 	: Extensor PORT MAP(
							 ENTRADA1 => rom_out(2 DOWNTO 0);
							 ENTRADA2 => rom_out(3 DOWNTO 0);
							 SAIDA => extensordesinal_out;
							 extend => extend_out);
	
				  
	registradores 		: Registradores PORT MAP(
									ClockSys => clock,
									RegWrite => regwrite_out,
									RegA => regA_out,
									RegB => regB_out,
									Data => multiplex3_out,
									ReadReg1 => rom_out(4 DOWNTO 4);
									ReadReg2 => rom_out(3 DOWNTO 3));
									
										
	multiplex1 			: Multiplexador PORT MAP(
								A => extensor_out,
								B => add_pc_out,
								S1 => AAND_out,
								R => multiplex1_out);
							
	multiplex2 			: Multiplexador PORT MAP(
								A => regB_out,
								B => extensor_out,
								S1 => ula_src_out, 
								R => multiplex2_out);
							
	multiplex3 			: Multiplex PORT MAP(
								A => ram_out,
								B => ula_out,
								S1 => mem_to_reg_out,
								R => multiplex3_out);
								
	multiplex4 			: Multiplexador PORT MAP(
								A => "000" & rom_out(4 DOWNTO 0),
								B => multiplex1_out,
								S1 => jump_out,
								R => in_pc);
							
	multiplex5 			: Multiplexador PORT MAP(
								A => regA_out,
								B => regB_out,
								S1 => reg_for_write_out,
								R => multiplex_5_out);
							
	ULA 					: ULA PORT MAP(
							a => regA_out,
							b => multiplex2_out,
							ula_controle => ula_op_out,
							ula_resultado => ula_out,
							zero => ula_zero_out);
				
	ram 					: RAM PORT MAP(
							entradadaDATA => multiplex5_out,
							endereco => ula_out,
							readmemory => readmem, 
							writememory => writemem, 
							clocksys => clock,
							saidaDATA => ram_out);
				
			  
	porta_and 		: PortaAND PORT MAP(
							A => branch_out,
							B => ula_zero_out,
							R => AAND_out);
						
	UC 				: unidade_controle PORT MAP(
							opcode => rom_out(7 DOWNTO 5),
							funct => rom_out(2 DOWNTO 0),
							mem2reg => mem2reg_out, 
							ulaop => ulaop_out,
							branch => branch_out, 
							readmem => readmem_out, 
							writemem => writemem_out, 
							ula2 => ula2_out, 
							writereg => writereg_out,
							extend => extend_out,
							joomp => joomp_out,
							writereg2 => writereg2_out);
							
							out_pc <= in_pc,
							RegA <= regA_out,
							RegB <= regB_out,
							out_extensor <= extensor_out,
							mandown <= rom_out,
							out_opcode <= rom_out(7 DOWNTO 5),
							out_multiplex1 <= in_pc,
							out_multiplex2 <= multiplex2_out,
							out_multiplex3 <= multiplex3_out,
							out_multiplex4 <= multiplex5_out,
							out_branch <= branch_out;
							out_ram <= ram_out;
							out_ula_resultado <= ula_out;
							out_zero <= ula_zero_out;
END behavior;