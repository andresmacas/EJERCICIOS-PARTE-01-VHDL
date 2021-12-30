library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity diagramaEstado18 is
    Port ( X : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Salida : out  STD_LOGIC_VECTOR (2 downto 0));
end diagramaEstado18;

architecture Behavioral of diagramaEstado18 is
type tipo_estado is (a,b,c,d,e);
signal estado:tipo_estado :=a;
begin
	process(Clock, X) begin
		if (Clock'event and Clock = '1') then
			if X = '0' then
				case estado is
					when a =>
						estado <= b;
						Salida <= "001";
					when b =>
						estado <= a;
						Salida <= "000";
					when c =>
						estado <= b;
						Salida <= "001";
					when d =>
						estado <= c;
						Salida <= "010";
					when e =>
						estado <= d;
						Salida <= "011";
				end case;
			end if;
			if X = '1' then
				case estado is
					when a =>
						estado <= e;
						Salida <= "111";
					when b =>
						estado <= c;
						Salida <= "010";
					when c =>
						estado <= c;
						Salida <= "010";
					when d =>
						estado <= e;
						Salida <= "111";
					when e =>
						estado <= a;
						Salida <= "000";
				end case;
			end if;
		end if;
	end process;
end Behavioral;