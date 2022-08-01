----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/21/2022 11:59:33 PM
-- Design Name: 
-- Module Name: Instruction_Decoder_sim - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Instruction_Decoder_sim is
--  Port ( );
end Instruction_Decoder_sim;

architecture Behavioral of Instruction_Decoder_sim is
component Instruction_Decoder
     Port ( Instruction : in STD_LOGIC_VECTOR (11 downto 0);
          Reg_value : in STD_LOGIC_VECTOR (3 downto 0);
          Reg_enable : out STD_LOGIC_VECTOR (2 downto 0);
          Load_sel : out STD_LOGIC;
          imedi_val : out STD_LOGIC_VECTOR (3 downto 0);
          Reg_sel_1 : out STD_LOGIC_VECTOR (2 downto 0);
          Reg_sel_2 : out STD_LOGIC_VECTOR (2 downto 0);
          Sub_control : out STD_LOGIC;
          jump_flag : out STD_LOGIC;
          jump_Address : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal Instruction:STD_LOGIC_VECTOR(11 downto 0);
signal Reg_value:STD_LOGIC_VECTOR (3 downto 0);
signal Reg_enable:STD_LOGIC_VECTOR (2 downto 0);
signal Load_sel : STD_LOGIC;
signal imedi_val : STD_LOGIC_VECTOR (3 downto 0);
signal Reg_sel_1 : STD_LOGIC_VECTOR (2 downto 0);
signal Reg_sel_2 : STD_LOGIC_VECTOR (2 downto 0);
signal Sub_control :STD_LOGIC;
signal jump_flag : STD_LOGIC;
signal jump_Address :STD_LOGIC_VECTOR (2 downto 0);

begin
UUT:Instruction_decoder
port map(Instruction=>Instruction,
         Reg_value=>Reg_value,
         Reg_enable=>Reg_enable,
         Load_sel=>Load_sel,
         imedi_val=>imedi_val,
         Reg_sel_1=>Reg_sel_1,
         Reg_sel_2=>Reg_sel_2,
         Sub_control=>Sub_control,
         jump_flag=>jump_flag,
         jump_Address=>jump_Address);

process
begin
--index:200295J:0011 0000 1110 0110 0111
--      200646M:0011 0000 1111 1100 0110
--      200260A:0011 0000 1110 0100 0100
--      200617C:0011 0000 1111 0000 1001
--      200084L:0011 0000 1001 1001 0100
  Reg_value<="0111";
  Instruction <= "000011100110";
  WAIT FOR 100 ns;
  Instruction <= "111100011011";
  WAIT FOR 100 ns;
  Instruction <= "010011000011";
  WAIT FOR 100 ns;
  Instruction <= "000011100100";
  WAIT FOR 100 ns;
  Instruction <= "110000100111";
  WAIT FOR 100 ns;
  Instruction <= "010011000011";
  WAIT FOR 100 ns;
  Reg_value<="1001";
  Instruction <= "001100001001";
  WAIT;
 end process;
         
         


end Behavioral;
