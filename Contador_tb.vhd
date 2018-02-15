library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_LOGIC_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity Contador_tb is
end Contador_tb;

architecture behav of Contador_tb is
    constant width : natural := 8;
    constant clk_period : time := 50 ns;

    signal Ce : in std_logic := '0' ;
    signal Reset : in std_logic := '0';
    signal Clk : std_logic := '0';
    signal Up : in std_logic := '0' ;
    signal Q : std_logic_vector(width-1 downto 0);
    signal qtemp ; std_logic_vector (width-1 downto 0);

    type io_t is record
      qtemp : std_logic_vector(width-1 downto 0);
      Ce : std_logic;
      Reset : std_logic;
      Clk : std_logic;
      Up :  std_logic;
      Q : std_logic_vector(width-1 downto 0);
    end record;
begin
    counter_0: entity work.counter port map (clk, load, Q);

    process
    begin
        for i in 0 to 255 loop
            conv_integer(Cuenta) = i;
            wait until falling_edge(clk);
            assert Q = i;
            report "Falla en " & integer’image(i)
        end loop;
        wait;
    end process;

    process
    begin
        for i in 1 to 2 * 255 loop
            wait for clk_period / 2;
            clk <= not clk;
        end loop;
        wait;
    end process;
end behav;
