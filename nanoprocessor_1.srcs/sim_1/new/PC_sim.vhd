----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/27/2022 04:44:34 PM
-- Design Name: 
-- Module Name: PC_sim - Behavioral
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

entity PC_sim is
--  Port ( );
end PC_sim;

architecture Behavioral of PC_sim is
component PC
Port ( PC_in : in STD_LOGIC_VECTOR (2 downto 0);
       Res : in STD_LOGIC;
       Clk : in STD_LOGIC;
       PC_out : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal PC_in,PC_out:  STD_LOGIC_VECTOR (2 downto 0);
signal Res,Clk: STD_LOGIC;

begin
UUT: PC
    port map(
       PC_in => PC_in,
       Res => Res,
       Clk => Clk,
       PC_out => PC_out);
       
process begin
    Clk <= '0';
    wait for 50ns;
    Clk <= '1';
    wait for 50ns;
end process;

process begin
    --index:200295J:0011 0000 1110 0110 0111
--      200646M:0011 0000 1111 1100 0110
--      200260A:0011 0000 1110 0100 0100
--      200617C:0011 0000 1111 0000 1001
--      200084L:0011 0000 1001 1001 0100
    Res <= '1';
    wait for 100ns;
    Res <= '0';
   
    
    PC_in <= "001";
    wait for 50ns;
    PC_in <= "100";
    wait for 50ns;
    PC_in <= "111";
    wait for 50ns;
    PC_in <= "000";
    wait for 50ns;
    PC_in <= "110";
    wait for 50ns;
    
    Res <= '1';
    wait for 100ns;
    Res <= '0';
    wait;
end process;
end Behavioral;
