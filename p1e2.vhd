library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity Deco3a8Reg is
  port (
  D: in std_logic_vector (2 downto 0);
  CE :in std_logic;
  Clk : in std_logic;
  Reset :in std_logic;
  Q: out std_logic_vector (7 downto 0)
  );
end Deco3a8Reg;

architecture Deco3a8reg of Deco3a8Reg is
  signal S: std_logic_vector (7 downto 0);
  component Deco3a8
    port(
    D :in std_logic_vector (2 downto 0);
    S :out std_logic_vector (7 downto 0)
    );
  end component;
  component Registro
    port (
    D :in std_logic_vector (7 downto 0);
    CE :in std_logic;
    Clk : in std_logic;
    Reset :in std_logic;
    Q: out std_logic_vector (7 downto 0)
    );
  end component;
  begin
    --Soy un poco disminuido y he puesto los mismos nombres lo se im a fucking genius.
  u1:Deco3a8 port map(D(0)=>D(0),D(1)=>D(1),D(2)=>D(2),S(0)=>S(0),S(1)=>S(1),S(2)=>S(2),S(3)=>S(3),S(4)=>S(4),S(5)=>S(5),S(6)=>S(6),S(7)=>S(7));
  u2:Registro port map(D(0)=>S(0),D(1)=>S(1),D(2)=>S(2),D(3)=>S(3),D(4)=>S(4),D(5)=>S(5),D(6)=>S(6),D(7)=>S(7),Q(0)=>Q(0),Q(1)=>Q(1),Q(2)=>Q(2),Q(3)=>Q(3),Q(4)=>Q(4),Q(5)=>Q(5),Q(6)=>Q(6),Q(7)=>Q(7),CE=>CE,Clk=>Clk,Reset=>Reset);
end Deco3a8reg;
