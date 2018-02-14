----------------------------------------------------------------------
-- Fichero: Deco2a4.vhd
-- Descripci�n: Decodificador 2 a 4
-- Fecha �ltima modificaci�n: 2012-01-22

-- Autores: Alberto S�nchez (2012), Fernando L�pez (2010)
-- Asignatura: E.C. 1� grado
-- Grupo de Pr�cticas:
-- Grupo de Teor�a:
-- Pr�ctica: 1
-- Ejercicio: 2
----------------------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_LOGIC_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

--He incluido un CE para la asociacion de decoders
entity Deco2a4 is
    port (
		D : in  std_logic_vector (1 downto 0);
    CE : in std_logic;
		Q : out  std_logic_vector (3 downto 0)
	);
end Deco2a4;

architecture Practica of Deco2a4 is

begin

	process (D,CE)
	begin
    if CE = '1' then
  		case D is
  			when "00" => Q <= "0001";
  			when "01" => Q <= "0010";
  			when "10" => Q <= "0100";
  			when others => Q <= "1000";
  		end case;
    end if;
	end process;

end Practica;
