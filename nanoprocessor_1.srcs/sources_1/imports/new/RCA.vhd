----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2022 05:51:57 PM
-- Design Name: 
-- Module Name: RCA - Behavioral
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

entity RCA is
    Port ( A : in STD_LOGIC_VECTOR(3 downto 0);
           B : in STD_LOGIC_VECTOR(3 downto 0);
           operator : in STD_LOGIC;
           S : OUT STD_LOGIC_VECTOR(3 downto 0);
           overflow : out STD_LOGIC;
           Zero : out STD_LOGIC);
end RCA;

architecture Behavioral of RCA is
component FA
    port( A : in STD_LOGIC;
          B : in STD_LOGIC;
          C_in : in STD_LOGIC;
          S : out STD_LOGIC;
          C_out : out STD_LOGIC);
end component;

signal FA0_C,FA1_C,FA2_C,FA3_C,C_out,C_in1,B_0,B_1,B_2,B_3: std_logic;
signal S1 : std_logic_vector(3 downto 0);
begin
 FA_0: FA
    port map( 
        A=>A(0),
        B=>B_0,
        C_in=>C_in1,
        S=>S1(0),
        C_out=>FA0_C);
 FA_1: FA
    port map(
        A=>A(1),
        B=>B_1,
        C_in=>FA0_C,
        S=>S1(1),
        C_out=>FA1_C); 
 FA_2: FA
    port map(
        A=>A(2),
        B=>B_2,
        C_in=>FA1_C,
        S=>S1(2),
        C_out=>FA2_C);            
 FA_3: FA
    port map(
         A=>A(3),
         B=>B_3,
         C_in=>FA2_C,
         S=>S1(3),
         C_out=>C_out);   
         
    S<=S1;
    Zero <= not(S1(0) or S1(1) or S1(2) or S1(3));
    overflow <= C_out xor FA2_C;

    process(operator,B)
    begin
        if(operator='1')then
            C_in1 <= '1';
            B_0 <= not(B(0));
            B_1 <= not(B(1));
            B_2 <= not(B(2));
            B_3 <= not(B(3));
        else
            C_in1 <= '0';
            B_0 <= B(0);
            B_1 <= B(1);
            B_2 <= B(2);
            B_3 <= B(3);
           
        end if;   
    end process;
end Behavioral;
