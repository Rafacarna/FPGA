library ieee;
use ieee.std_logic_1164.all;
entity mux_8bits_4x1 is
	port (
		clk : in std_logic;
		a : in std_logic_vector(7 downto 0);
		b : in std_logic_vector(7 downto 0);
		c : in std_logic_vector(7 downto 0);
		d : in std_logic_vector(7 downto 0);
		sel : in std_logic_vector(1 downto 0);
		q : out std_logic_vector(7 downto 0)
	);
end entity mux_8bits_4x1;
architecture arq of mux_8bits_4x1 is
begin
	process(sel, clk)
	begin
		if(rising_edge(clk)) then
			case (sel) is
				when "00" => q <= a;
				when "01" => q <= b;
				when "10" => q <= c;
				when "11" => q <= d;
				when others => q <= (others => '0');
			end case;
		end if;
	end process;
end architecture arq;