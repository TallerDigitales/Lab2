library IEEE; use IEEE.STD_LOGIC_1164.all; 

entity sevenSegments_tb is 
end sevenSegments_tb;

architecture test of sevenSegments_tb is

signal A: STD_LOGIC_VECTOR (3 downto 0);
signal Output: STD_LOGIC_VECTOR (6 downto 0);

 -- declara el componente de 7 segmentos
 component sevenSegments 
  port (A: in  STD_LOGIC_VECTOR(3 downto 0);
		  Output: out STD_LOGIC_VECTOR(6 downto 0)
		  );
 end component;
 
 -- instancia el objeto de prueba
 
 begin
  DUT1: sevenSegments 
	port map(A => A, Output => Output);
            
  testing: process 
  begin 
   A <= "1111";
	wait for 10ns;
   A <= "0000";
  end process;
  
end;

