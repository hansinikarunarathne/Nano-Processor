----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/20/2022 10:16:05 PM
-- Design Name: 
-- Module Name: MUX_2_way_3bit_sim - Behavioral
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

entity MUX_2_way_3bit_sim is
--  Port ( );
end MUX_2_way_3bit_sim;

architecture Behavioral of MUX_2_way_3bit_sim is
component MUX_2_way_3bit
    Port ( Jump_Address : in STD_LOGIC_VECTOR (2 downto 0);
           Inc_Address : in STD_LOGIC_VECTOR (2 downto 0);
           Jump_flag : in STD_LOGIC;
           Address : out STD_LOGIC_VECTOR(2 downto 0));
end component;
signal Jump_Address:STD_LOGIC_VECTOR(2 downto 0);
signal Inc_Address:STD_LOGIC_VECTOR(2 downto 0);
signal Jump_flag:STD_LOGIC;
signal Address:STD_LOGIC_VECTOR(2 downto 0);

begin
UUT:MUX_2_way_3bit
port map(
    Jump_Address(2 downto 0)=>Jump_Address(2 downto 0),
    Inc_Address(2 downto 0)=>Inc_Address(2 downto 0),
    Address(2 downto 0)=>Address(2 downto 0),
    Jump_flag=>Jump_flag);

process
begin
--index:200295J:0011 0000 1110 0110 0111
--      200646M:0011 0000 1111 1100 0110
--      200260A:0011 0000 1110 0100 0100
--      200617C:0011 0000 1111 0000 1001
--      200084L:0011 0000 1001 1001 0100
Inc_Address<="111";
Jump_Address<="100";
Jump_flag<='1';

wait for 100ns;
Jump_flag<='0';
wait;


end process;
end Behavioral;
