library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity Registro is
  port (
  D :in std_logic_vector (7 downto 0);
  CE :in std_logic;
  Clk : in std_logic;
  Reset :in std_logic;
  Q: out std_logic_vector (7 downto 0)
  );
end Registro;

architecture synth of Registro is
begin
  process (Clk,Reset,CE) is
  begin
    if Reset = '1' or CE = '0' then
      Q<= (others => '0');
    elsif Clk ='1' and Clk'event then
      Q<= D;
    end if;
  end process;
end synth;
