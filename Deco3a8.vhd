library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_LOGIC_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity Deco3a8 is
  port (
  D :in std_logic_vector (2 downto 0);
  S :out std_logic_vector (7 downto 0)
  );
end Deco3a8;

architecture Practica3a8 of Deco3a8 is
  component Deco2a4
    port (
      D : in std_logic_vector (1 downto 0);
      CE : in std_logic;
      Q : out std_logic_vector (3 downto 0)
    );
  end component;
  begin
  a1 : Deco2a4 port map (D(0)=>D(0),D(1)=>D(1),CE=>(not D(2)),Q(0)=>S(0),Q(1)=>S(1),Q(2)=>S(2),Q(3)=>S(3));
  a2 : Deco2a4 port map (D(0)=>D(0),D(1)=>D(1),CE=>D(2),Q(0)=>S(4),Q(1)=>S(5),Q(2)=>S(6),Q(3)=>S(7));
end Practica3a8;
