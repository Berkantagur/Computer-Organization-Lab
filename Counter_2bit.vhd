library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Counter is
    port (
        CLK, RST : in std_logic;
        Updown : in std_logic;
        Outp : out std_logic_vector(1 downto 0)
    );
end Counter;

architecture structure of Counter is
    signal Cnt : signed (1 downto 0);
begin
    process (CLK, RST)
    begin
        if RST = '1' then
            Cnt <= (00);
        else
            if (Updown = '1' and rising_edge(CLK)) then
                Cnt <= Cnt + 1;
            elsif (Updown = '0' and falling_edge(CLK)) then
                Cnt <= Cnt - 1;
            end if;
        end if;
        Outp <= std_logic_vector(Cnt);
    end process;
end structure;