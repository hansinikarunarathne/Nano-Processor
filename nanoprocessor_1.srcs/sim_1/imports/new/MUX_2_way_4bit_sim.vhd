----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/21/2022 01:03:27 AM
-- Design Name: 
-- Module Name: MUX_2_way_4bit_sim - Behavioral
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

entity MUX_2_way_4bit_sim is
--  Port ( );
end MUX_2_way_4bit_sim;

architecture Behavioral of MUX_2_way_4bit_sim is
component MUX_2_way_4bit
    Port ( Load_Sel : in STD_LOGIC;
           Imedi_Val : in STD_LOGIC_VECTOR(3 downto 0);
           Result : in STD_LOGIC_VECTOR (3 downto 0);
           O : out STD_LOGIC_VECTOR(3 downto 0));
end component;
signal Load_Sel:STD_LOGIC;
signal Imedi_Val:STD_LOGIC_VECTOR(3 downto 0);
signal Result:STD_LOGIC_VECTOR(3 downto 0);
signal O:STD_LOGIC_VECTOR(3 downto 0);

begin
UUT:MUX_2_way_4bit
    port map(
            Imedi_Val(3 downto 0)=>Imedi_Val(3 downto 0),
            Result(3 downto 0)=>Result(3 downto 0),
            O(3 downto 0)=>O(3 downto 0),
            Load_Sel=>Load_Sel);

process
begin
--index:200295J:0011 0000 1110 0110 0111
--      200646M:0011 0000 1111 1100 0110
--      200260A:0011 0000 1110 0100 0100
--      200617C:0011 0000 1111 0000 1001
--      200084L:0011 0000 1001 1001 0100
Imedi_Val<="1110";
Result<="0110";
Load_Sel<='0';

wait for 100ns;
Load_Sel<='1';
wait;
end process;
end Behavioral;
