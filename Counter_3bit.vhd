library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Counter is
    port(
        clk : in std_logic;
        rst : in std_logic;
        Updown : in std_logic;
        Outp : out std_logic_vector(2 downto 0)
    );
end Counter;

architecture structure of Counter is
    signal Cnt : signed(2 downto 0);
begin
    process(clk, rst)
    begin
        if rst = '1' then
            Cnt <= (000);
        else
            if (Updown = '1' and rising_edge(clk)) then
                Cnt <= Cnt + '1';
            elsif (Updown = '0' and falling_edge(clk)) then
                Cnt <= Cnt - '1';
            end if;
        end if;
    end process;
    Outp <= std_logic_vector(Cnt);
end structure;