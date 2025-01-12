library ieee;
use ieee.std_logic_1164.all;

entity logic1 is

port( a,b,c : in std_logic;
       y : out std_logic);
		
		end entity;
		
architecture logic_arch of logic1 is

begin

y <= a or ( b and c) after 465ps ;

end architecture;		