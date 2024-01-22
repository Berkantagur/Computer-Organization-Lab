library ieee;
use ieee.std_logic_1164.all;

entity Factory is
    port(
        Sensor1, Sensor2, Start, Emergency : in std_logic;
        Motor, Musluk : out std_logic
    );
end Factory;

architecture structure of Factory is
begin
    process(Sensor1, Sensor2, Start, Emergency)
    begin
        if ((Start = '1') and (Emergency = '0') and (Sensor1 = '0')) then
            Motor <= '1';
        else
            Motor <= '0';
            if ((Sensor1 = '1') and (Sensor2 = '0') and (Emergency = '0')) then 
                Musluk <= '1';
            else
                Musluk <= '0';
                Motor <= '1';
            end if;
        end if;
    end process;
end structure;