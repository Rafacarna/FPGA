library IEEE;
use IEEE.std_logic_1164.all;
entity soma_8bits is -- full adder
	port (
		a : in std_logic_vector (7 downto 0);
		b : in std_logic_vector (7 downto 0);
		op : in std_logic; -- '0' a+b, '1' a-b
		sum : out std_logic_vector (7 downto 0);
		co : out std_logic
	);
end entity soma_8bits;
architecture arq of soma_8bits is
	signal ci : std_logic;
	signal auxb : std_logic_vector (7 downto 0);
begin
	auxb <= b when op = '0' else not b; -- inverte-se bits
	ci <= '0' when op = '0' else '1';   -- +1 ao resultado 
	process(a,auxb,ci)
		variable carry : std_logic;
		variable tempsum : std_logic_vector(7 downto 0);
		variable axorb : std_logic;
	begin
		carry := ci;
		for i in 0 to 7 
		loop
			axorb := a(i) xor auxb(i);
			tempsum(i) := axorb xor carry;
			carry := (a(i) and auxb(i)) or (axorb and carry);
		end loop;
		sum <= tempsum;
		co <= carry;
	end process;
end architecture arq;