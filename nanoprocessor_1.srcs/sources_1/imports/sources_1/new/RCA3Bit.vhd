----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/19/2022 11:56:17 PM
-- Design Name: 
-- Module Name: RCA3Bit - Behavioral
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

entity RCA3Bit is
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           S : out STD_LOGIC_VECTOR (2 downto 0));
           
end RCA3Bit;

architecture Behavioral of RCA3Bit is
component FA
    Port (  A : in STD_LOGIC;
            B : in STD_LOGIC;
            C_in : in STD_LOGIC;
            S : out STD_LOGIC;
            C_out : out STD_LOGIC);
 end component;
SIGNAL FA0_S, FA0_C, FA1_S, FA1_C, FA2_S, FA2_C,C_out  : std_logic;
begin

FA_0 : FA
 port map (
     A => A(0),
     B => '1',
     C_in => '0', 
     S => S(0),
     C_Out => FA0_C
     );
     
 FA_1 : FA
 port map (
     A => A(1),
     B => '0',
     C_in => FA0_C,
     S => S(1),
     C_Out => FA1_C
 );

 FA_2 : FA
 port map (
     A => A(2),
     B => '0',
     C_in => FA1_C,
     S => S(2),
     C_Out => C_out
     );


end Behavioral;
