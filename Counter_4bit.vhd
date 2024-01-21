library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Counter is
port (
  RST, CLK : in std_logic;
  Updown : in std_logic;
  outp : out std_logic_vector(3 downto 0)
);
end Counter;

architecture structure of Counter is
signal Cnt : assigned (3 downto 0);
begin
  process(clk,rst)
  begin
    if RST = '1' then
      Cnt <= "0000";
    else
      if(Updown = '0' and rising_edge(CLK)) then
        Cnt <= Cnt + 1;
      elsif(Updown = '1' and falling_edge(CLK)) then
    	Cnt <= Cnt - 1;
  	  end if;
    end if;
	outp <= std_logic_vector(Cnt);
end process;
end structure;