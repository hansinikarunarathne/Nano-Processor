----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/22/2022 12:44:06 AM
-- Design Name: 
-- Module Name: programROM_sim - Behavioral
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

entity programROM_sim is
--  Port ( );
end programROM_sim;

architecture Behavioral of programROM_sim is
component programROM
 Port ( Mem_select : in STD_LOGIC_VECTOR (2 downto 0);
          Ins_bus : out STD_LOGIC_VECTOR (11 downto 0));
end component;
signal Mem_select:STD_LOGIC_VECTOR(2 downto 0);
signal Ins_bus:STD_LOGIC_VECTOR(11 downto 0);
begin
UUT:programROM
    port map(
            Mem_select(2 downto 0)=>Mem_select(2 downto 0),
            Ins_bus(11 downto 0)=>Ins_bus(11 downto 0));

process
begin
--index:200295J:0011 0000 1110 0110 0111
--      200646M:0011 0000 1111 1100 0110
--      200260A:0011 0000 1110 0100 0100
--      200617C:0011 0000 1111 0000 1001
--      200084L:0011 0000 1001 1001 0100
Mem_select<="111";
wait for 100ns;

Mem_select<="100";
wait for 100ns;

Mem_select<="001";
wait for 100ns;

Mem_select<="110";
wait for 100ns;

Mem_select<="000";
wait for 100ns;

Mem_select<="111";
wait for 100ns;

Mem_select<="011";
wait for 100ns;

Mem_select<="100";
wait;

end process;

end Behavioral;
