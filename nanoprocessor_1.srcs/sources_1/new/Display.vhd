----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/25/2022 08:47:54 PM
-- Design Name: 
-- Module Name: Display - Behavioral
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

entity Display is
    Port ( R7_val : in STD_LOGIC_VECTOR (3 downto 0);
           Seven_seg_out : out STD_LOGIC_VECTOR (6 downto 0);
           negative : out STD_LOGIC);
end Display;

architecture Behavioral of Display is
component LUT_16_7
port (address : in STD_LOGIC_VECTOR (3 downto 0);
      data1 : out STD_LOGIC_VECTOR (6 downto 0));
end component;

begin
LUT_16_7_1 : LUT_16_7
port map (
    address => R7_val,
    data1 => Seven_seg_out
);

negative <= R7_val(3);
end Behavioral;
