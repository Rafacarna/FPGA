library ieee;
use ieee.std_logic_1164.all;
entity logica_8bits is
	port (
		a : in std_logic_vector(7 downto 0);
		b : in std_logic_vector(7 downto 0);
		sel : in std_logic_vector(1 downto 0);
		q : out std_logic_vector(7 downto 0)
	);
end entity logica_8bits;
architecture arq of logica_8bits is
begin
	process(sel,a,b)
	begin
		case(sel) is
			when "00" => q <= not a;
			when "01" => q <= a and b;
			when "10" => q <= a or b;
			when "11" => q <= a xor b;
			when others => q <= (others => '0');
		end case;
	end process;
end architecture arq;