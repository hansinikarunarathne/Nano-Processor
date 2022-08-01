
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_RCA3Bit is
--  Port ( );
end TB_RCA3Bit;

architecture Behavioral of TB_RCA3Bit is
COMPONENT RCA3Bit
    Port ( 
      A : in STD_LOGIC_VECTOR (2 downto 0);
      S : OUT STD_LOGIC_VECTOR (2 downto 0));
      
END COMPONENT;
signal A,S  : STD_LOGIC_VECTOR (2 downto 0);
begin

UUT : RCA3Bit
PORT MAP(
    A => A,
    S => S
);

process
begin
    --Index Num = 200084L
    --Index Num in binary = 110 000 110 110 010 100

    A<="110";
    wait for 100ns;

    A<="000";
    wait for 100ns;
    
    A<="010";
    wait for 100ns;
    
    A<="100";
    wait;        
end process;


end Behavioral;