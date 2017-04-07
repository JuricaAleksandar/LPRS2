----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:09:10 04/06/2017 
-- Design Name: 
-- Module Name:    reg - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg is
	 generic (
		WIDTH : natural := 1
    );
    Port ( i_d : in  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           i_clk : in  STD_LOGIC;
           in_rst : in  STD_LOGIC;
			  i_EN : in STD_LOGIC;
           o_q : out  STD_LOGIC_VECTOR (WIDTH-1 downto 0));
end reg;

architecture Behavioral of reg is

signal s_q : STD_LOGIC_VECTOR (WIDTH-1 downto 0);

begin
process (i_clk,in_rst)
begin
if (in_rst='0') then
	s_q<=(others => '0');
elsif rising_edge(i_clk) then
	if (i_EN='1') then
		s_q<=i_d;
	end if;
end if;
end process;
o_q<=s_q;
end Behavioral;

