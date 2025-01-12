-- simple gates with trivial architectures
--and_gate
library IEEE;
use IEEE.std_logic_1164.all;

entity andgate is
port (A, B: in std_ulogic;
prod: out std_ulogic);
end entity andgate;

architecture trivial of andgate is
begin
prod <= A AND B AFTER 364 ps;
end architecture trivial;


--xor_gate
library IEEE;
use IEEE.std_logic_1164.all;

entity xorgate is
port (A, B: in std_ulogic;
uneq: out std_ulogic);
end entity xorgate;

architecture trivial of xorgate is
begin
uneq <= A XOR B AFTER 728 ps;
end architecture trivial;


--abc_gate
library IEEE;
use IEEE.std_logic_1164.all;

entity abcgate is
port (A, B, C: in std_ulogic;
abc: out std_ulogic);
end entity abcgate;

architecture trivial of abcgate is
begin
abc <= A OR (B AND C) AFTER 464 ps;
end architecture trivial;


-- A + C.(A+B) with a trivial architecture
library IEEE;
use IEEE.std_logic_1164.all;

entity Cin_map_G is
port(A, B, Cin: in std_ulogic;
Bit0_G: out std_ulogic);
end entity Cin_map_G;

architecture trivial of Cin_map_G is
begin
Bit0_G <= (A AND B) OR (Cin AND (A OR B)) AFTER 728 ps;
end architecture trivial;


--half_adder
library IEEE;
use IEEE.std_logic_1164.all;

entity halfadder is
port (A, B: in std_ulogic;
      s, cout: out std_ulogic);
end entity halfadder;

architecture trivial of halfadder is
begin
s <= A XOR B AFTER 728 ps;
cout <= A AND B AFTER 364 ps;
end architecture trivial;


--full_adder
library IEEE;
use IEEE.std_logic_1164.all;

entity fulladder is
port (A, B, Cin: in std_ulogic;
      s, cout: out std_ulogic);
end entity fulladder;

architecture trivial of fulladder is
begin
s <= A XOR B XOR Cin AFTER 1456 ps;
Cout <= (A AND B) OR (Cin AND (A OR B)) AFTER 728 ps;
end architecture trivial;