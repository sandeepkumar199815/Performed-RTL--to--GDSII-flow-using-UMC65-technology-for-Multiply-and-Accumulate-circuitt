library ieee;
use ieee.std_logic_1164.all;

entity brent_kung_adder is
     port(a,b: in std_logic_vector(31 downto 0);
          s: out std_logic_vector(31 downto 0);
          cout: out std_logic;
          cin: in std_logic);
end entity;

architecture a1 of brent_kung_adder is
    --signal declarations --
    
        --leaf nodes
        signal g0,p0: std_logic_vector(31 downto 0);
        -- root nodes
		  signal g5,p5: std_logic;
		  -- intermediate nodes
        signal g1,p1: std_logic_vector(15 downto 0);
        signal g2,p2: std_logic_vector(7 downto 0);
        signal g3,p3: std_logic_vector(3 downto 0);
        signal g4,p4: std_logic_vector(1 downto 0);     
        --carry bits--
        signal c: std_logic_vector(31 downto 0);

    -- component declarations --
       component andgate is
          port (A, B: in std_logic;
                prod: out std_logic);
       end component;

       component xorgate is
          port (A, B: in std_logic;
                uneq: out std_logic);
       end component xorgate;

       component abcgate is
          port (A, B, C: in std_logic;
                abc: out std_logic);
       end component abcgate;

       component Cin_map_G is
          port (A, B, Cin: in std_logic;
               Bit0_G: out std_logic);
       end component Cin_map_G;

begin

g0_0: Cin_map_G port map (a(0), b(0), cin, g0(0));
p0_0: xorgate port map (a(0), b(0), p0(0));
g0_1: andgate port map (a(1), b(1), g0(1));
p0_1: xorgate port map (a(1), b(1), p0(1));
g0_2: andgate port map (a(2), b(2), g0(2));
p0_2: xorgate port map (a(2), b(2), p0(2));
g0_3: andgate port map (a(3), b(3), g0(3));
p0_3: xorgate port map (a(3), b(3), p0(3));
g0_4: andgate port map (a(4), b(4), g0(4));
p0_4: xorgate port map (a(4), b(4), p0(4));
g0_5: andgate port map (a(5), b(5), g0(5));
p0_5: xorgate port map (a(5), b(5), p0(5));
g0_6: andgate port map (a(6), b(6), g0(6));
p0_6: xorgate port map (a(6), b(6), p0(6));
g0_7: andgate port map (a(7), b(7), g0(7));
p0_7: xorgate port map (a(7), b(7), p0(7));
g0_8: andgate port map (a(8), b(8), g0(8));
p0_8: xorgate port map (a(8), b(8), p0(8));
g0_9: andgate port map (a(9), b(9), g0(9));
p0_9: xorgate port map (a(9), b(9), p0(9));
g0_10: andgate port map (a(10), b(10), g0(10));
p0_10: xorgate port map (a(10), b(10), p0(10));
g0_11: andgate port map (a(11), b(11), g0(11));
p0_11: xorgate port map (a(11), b(11), p0(11));
g0_12: andgate port map (a(12), b(12), g0(12));
p0_12: xorgate port map (a(12), b(12), p0(12));
g0_13: andgate port map (a(13), b(13), g0(13));
p0_13: xorgate port map (a(13), b(13), p0(13));
g0_14: andgate port map (a(14), b(14), g0(14));
p0_14: xorgate port map (a(14), b(14), p0(14));
g0_15: andgate port map (a(15), b(15), g0(15));
p0_15: xorgate port map (a(15), b(15), p0(15));
g0_16: andgate port map (a(16), b(16), g0(16));
p0_16: xorgate port map (a(16), b(16), p0(16));
g0_17: andgate port map (a(17), b(17), g0(17));
p0_17: xorgate port map (a(17), b(17), p0(17));
g0_18: andgate port map (a(18), b(18), g0(18));
p0_18: xorgate port map (a(18), b(18), p0(18));
g0_19: andgate port map (a(19), b(19), g0(19));
p0_19: xorgate port map (a(19), b(19), p0(19));
g0_20: andgate port map (a(20), b(20), g0(20));
p0_20: xorgate port map (a(20), b(20), p0(20));
g0_21: andgate port map (a(21), b(21), g0(21));
p0_21: xorgate port map (a(21), b(21), p0(21));
g0_22: andgate port map (a(22), b(22), g0(22));
p0_22: xorgate port map (a(22), b(22), p0(22));
g0_23: andgate port map (a(23), b(23), g0(23));
p0_23: xorgate port map (a(23), b(23), p0(23));
g0_24: andgate port map (a(24), b(24), g0(24));
p0_24: xorgate port map (a(24), b(24), p0(24));
g0_25: andgate port map (a(25), b(25), g0(25));
p0_25: xorgate port map (a(25), b(25), p0(25));
g0_26: andgate port map (a(26), b(26), g0(26));
p0_26: xorgate port map (a(26), b(26), p0(26));
g0_27: andgate port map (a(27), b(27), g0(27));
p0_27: xorgate port map (a(27), b(27), p0(27));
g0_28: andgate port map (a(28), b(28), g0(28));
p0_28: xorgate port map (a(28), b(28), p0(28));
g0_29: andgate port map (a(29), b(29), g0(29));
p0_29: xorgate port map (a(29), b(29), p0(29));
g0_30: andgate port map (a(30), b(30), g0(30));
p0_30: xorgate port map (a(30), b(30), p0(30));
g0_31: andgate port map (a(31), b(31), g0(31));
p0_31: xorgate port map (a(31), b(31), p0(31));
	  
	  
    --generate g1 signals --
    abc_1:  abcgate port map(a => g0(1), b => p0(1), c => g0(0), abc => g1(0));
    abc_2:  abcgate port map(a => g0(3), b => p0(3), c => g0(2), abc => g1(1));
    abc_3:  abcgate port map(a => g0(5), b => p0(5), c => g0(4), abc => g1(2));
    abc_4:  abcgate port map(a => g0(7), b => p0(7), c => g0(6), abc => g1(3));
    abc_5:  abcgate port map(a => g0(9), b => p0(9), c => g0(8), abc => g1(4));
    abc_6:  abcgate port map(a => g0(11), b => p0(11), c => g0(10), abc => g1(5));
    abc_7:  abcgate port map(a => g0(13), b => p0(13), c => g0(12), abc => g1(6));
    abc_8:  abcgate port map(a => g0(15), b => p0(15), c => g0(14), abc => g1(7));
	 abc_9:  abcgate port map(a => g0(17), b => p0(17), c => g0(16), abc => g1(8));
    abc_10: abcgate port map(a => g0(19), b => p0(19), c => g0(18), abc => g1(9));
    abc_11: abcgate port map(a => g0(21), b => p0(21), c => g0(20), abc => g1(10));
    abc_12: abcgate port map(a => g0(23), b => p0(23), c => g0(22), abc => g1(11));
    abc_13: abcgate port map(a => g0(25), b => p0(25), c => g0(24), abc => g1(12));
    abc_14: abcgate port map(a => g0(27), b => p0(27), c => g0(26), abc => g1(13));
    abc_15: abcgate port map(a => g0(29), b => p0(29), c => g0(28), abc => g1(14));
    abc_16: abcgate port map(a => g0(31), b => p0(31), c => g0(30), abc => g1(15));
    --generate p1 signals --
    and_1: andgate port map(a =>p0(0), b=>p0(1), prod=>p1(0));
    and_2: andgate port map(a =>p0(2), b=>p0(3), prod=>p1(1));
    and_3: andgate port map(a =>p0(4), b=>p0(5), prod=>p1(2));
    and_4: andgate port map(a =>p0(6), b=>p0(7), prod=>p1(3));
    and_5: andgate port map(a =>p0(8), b=>p0(9), prod=>p1(4));
    and_6: andgate port map(a =>p0(10), b=>p0(11), prod=>p1(5));
    and_7: andgate port map(a =>p0(12), b=>p0(13), prod=>p1(6));
    and_8: andgate port map(a =>p0(14), b=>p0(15), prod=>p1(7));
	 and_9: andgate port map(a =>p0(16), b=>p0(17), prod=>p1(8));
    and_10: andgate port map(a =>p0(18), b=>p0(19), prod=>p1(9));
    and_11: andgate port map(a =>p0(20), b=>p0(21), prod=>p1(10));
    and_12: andgate port map(a =>p0(22), b=>p0(23), prod=>p1(11));
    and_13: andgate port map(a =>p0(24), b=>p0(25), prod=>p1(12));
    and_14: andgate port map(a =>p0(26), b=>p0(27), prod=>p1(13));
    and_15: andgate port map(a =>p0(28), b=>p0(29), prod=>p1(14));
    and_16: andgate port map(a =>p0(30), b=>p0(31), prod=>p1(15));


    --generate g2 signals --
    abc_17: abcgate port map(a => g1(1), b => p1(1), c => g1(0), abc => g2(0));
    abc_18: abcgate port map(a => g1(3), b => p1(3), c => g1(2), abc => g2(1));
    abc_19: abcgate port map(a => g1(5), b => p1(5), c => g1(4), abc => g2(2));
    abc_20: abcgate port map(a => g1(7), b => p1(7), c => g1(6), abc => g2(3));
	 abc_21: abcgate port map(a => g1(9), b => p1(9), c => g1(8), abc => g2(4));
    abc_22: abcgate port map(a => g1(11), b => p1(11), c => g1(10), abc => g2(5));
    abc_23: abcgate port map(a => g1(13), b => p1(13), c => g1(12), abc => g2(6));
    abc_24: abcgate port map(a => g1(15), b => p1(15), c => g1(14), abc => g2(7));
    --generate p2 signals --
    and_17: andgate port map(a =>p1(0), b=>p1(1), prod=>p2(0));
    and_18: andgate port map(a =>p1(2), b=>p1(3), prod=>p2(1));
    and_19: andgate port map(a =>p1(4), b=>p1(5), prod=>p2(2));
    and_20: andgate port map(a =>p1(6), b=>p1(7), prod=>p2(3));
	 and_21: andgate port map(a =>p1(8), b=>p1(9), prod=>p2(4));
    and_22: andgate port map(a =>p1(10), b=>p1(11), prod=>p2(5));
    and_23: andgate port map(a =>p1(12), b=>p1(13), prod=>p2(6));
    and_24: andgate port map(a =>p1(14), b=>p1(15), prod=>p2(7));

    --generate g3 signals --
    abc_25: abcgate port map(a => g2(1), b => p2(1), c => g2(0), abc => g3(0));
    abc_26: abcgate port map(a => g2(3), b => p2(3), c => g2(2), abc => g3(1));
    abc_27: abcgate port map(a => g2(5), b => p2(5), c => g2(4), abc => g3(2));
    abc_28: abcgate port map(a => g2(7), b => p2(7), c => g2(6), abc => g3(3));
    --generate p3 signals --
    and_25: andgate port map(a =>p2(0), b=>p2(1), prod=>p3(0));
    and_26: andgate port map(a =>p2(2), b=>p2(3), prod=>p3(1));
	 and_27: andgate port map(a =>p2(4), b=>p2(5), prod=>p3(2));
    and_28: andgate port map(a =>p2(6), b=>p2(7), prod=>p3(3));

    --generate g4 signals --
    abc_29: abcgate port map(a => g3(1), b => p3(1), c => g3(0), abc => g4(0));
	 abc_30: abcgate port map(a => g3(3), b => p3(3), c => g3(2), abc => g4(1));
    --generate p4 signals --
    and_29: andgate port map(a => p3(0), b => p3(1), prod=>p4(0));
	 and_30: andgate port map(a => p3(2), b => p3(3), prod=>p4(1));
	 
	 --generate g5 signals --
	 abc_31: abcgate port map(a => g4(1), b => p4(1), c => g4(0), abc => g5);
	 --generate p5 signals --
	 and_31: andgate port map(a => p4(0), b => p4(1), prod=>p5);

    --carry signals --
    c1: abcgate port map (g0(0), p0(0), cin, c(1));
    c2: abcgate port map (g1(0), p1(0), cin, c(2));
    c3: abcgate port map (g0(2), p0(2), c(2), c(3));
    c4: abcgate port map (g2(0), p2(0), cin, c(4));
    c5: abcgate port map (g0(4), p0(4), c(4), c(5));
    c6: abcgate port map (g1(2), p1(2), c(4), c(6));
    c7: abcgate port map (g0(6), p0(6), c(6), c(7));
    c8: abcgate port map (g3(0), p3(0), cin, c(8));
    c9: abcgate port map (g0(8), p0(8), c(8), c(9));
   c10: abcgate port map (g1(4), p1(4), c(8), c(10));
   c11: abcgate port map (g0(10), p0(10), c(10), c(11));
   c12: abcgate port map (g2(2), p2(2), c(8), c(12));
   c13: abcgate port map (g0(12), p0(12), c(12), c(13));
   c14: abcgate port map (g1(6), p1(6), c(12), c(14));
   c15: abcgate port map (g0(14), p0(14), c(14), c(15));
   c16: abcgate port map (g4(0), p4(0), cin, c(16));
   c17: abcgate port map (g0(16), p0(16), c(16), c(17));
   c18: abcgate port map (g1(8), p1(8), c(16), c(18));
   c19: abcgate port map (g0(18), p0(18), c(18), c(19));
   c20: abcgate port map (g2(4), p2(4), c(16), c(20));
   c21: abcgate port map (g0(20), p0(20), c(20), c(21));
   c22: abcgate port map (g1(10), p1(10), c(20), c(22));
   c23: abcgate port map (g0(22), p0(22), c(22), c(23));
   c24: abcgate port map (g3(2), p3(2), c(16), c(24));
   c25: abcgate port map (g0(24), p0(24), c(24), c(25));
   c26: abcgate port map (g1(12), p1(12), c(24), c(26));
   c27: abcgate port map (g0(26), p0(26), c(26), c(27));
   c28: abcgate port map (g2(6), p2(6), c(24), c(28));
   c29: abcgate port map (g0(28), p0(28), c(28), c(29));
   c30: abcgate port map (g1(14), p1(14), c(28), c(30));
   c31: abcgate port map (g0(30), p0(30), c(30), c(31));
   c32: abcgate port map (g5, p5, cin, cout);
	
	c(0)<=cin;

    --sum signals--
    sum_terms: for i in 0 to 31 generate
        sum_xor_i: xorgate port map(a => p0(i), b => c(i), uneq => s(i));
    end generate sum_terms;
	 
end a1;