library IEEE;
use IEEE.std_logic_1164.all;

entity Comparator is
    port (
        A, B : in std_logic_vector (1 downto 0);
        BgreaterA : out std_logic;
        AequalB : out std_logic
    );
end Comparator;

architecture comparator_structural of Comparator is
    signal temp1, temp2, temp3, temp4, temp5 : std_logic;
begin
    temp1 <= (not A(0)) and (not A(1)) and B(0);
    temp2 <= (not A(1)) and B(1);
    temp3 <= (not A(0)) and B(1) and B(0) and A(1);
    BgreaterA <= temp1 or temp2 or temp3;

    temp4 <= A(0) xnor B(0);
    temp5 <= A(1) xnor B(1);
    AequalB <= temp4 or temp5;

end comparator_structural;