library ieee;
use ieee.std_logic_1164.all;
entity registrador_8bits is
	port (
		d    : in std_logic_vector(7 downto 0);
		nrst : in std_logic;
		load : in std_logic;
		q    : out std_logic_vector(7 downto 0)
	);
end entity registrador_8bits;
architecture arq of registrador_8bits is
begin
	process (nrst, load) is
	begin
		if nrst = '0' then
			q <= (others => '0');
		else
			if load = '1' then
				q <= d;
			end if;
		end if;
	end process;
end architecture arq;