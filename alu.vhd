library ieee;
use ieee.std_logic_1164.all;

entity alu is 
    port (
        I_A, I_B : in std_logic;
        I_OP : in std_logic;
        O_Result : out std_logic;
        O_Zero : out std_logic;
    );
    end entity alu;

architecture Behaviour of alu is
begin
    process (I_OP)
    begin   
        case I_OP is
        end case;
    end process;
end Behaviour;
