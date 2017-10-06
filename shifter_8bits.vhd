library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shifter_8bits is
	port (
		a : in std_logic_vector(7 downto 0);
		b : in std_logic_vector(2 downto 0);
		dir : in std_logic; -- '0' shift left, '1' shift right
		q : out std_logic_vector(7 downto 0)
	);
end entity shifter_8bits;

architecture arq of shifter_8bits is
	signal arg : signed (7 downto 0);
begin
	arg <= signed(a);
	process(dir, arg, b)
		variable n : natural;
	begin
		n := to_integer(unsigned(b));
		if(dir = '0') then
			q <= std_logic_vector(shift_left(arg, n));
		else
			q <= std_logic_vector(shift_right(arg, n));
		end if;
	end process;
end architecture arq;