library ieee;
use ieee.std_logic_1164.all;

entity alu is 
    port (
        I_A, I_B : in std_logic;
        I_OP : in std_logic_vector(2 downto 0);
        O_Result : out std_logic;
        O_Zero : out std_logic
    );
    end entity alu;

architecture Behaviour of alu is
begin
    process (I_OP)
    begin   
        case I_OP is
            when "000" => O_Result <= A and B; -- AND
            when "001" => O_Result <= A or B; -- OR
            when "010" => O_Result <= A xor B; -- XOR
            when "011" => O_Result <= A + B; -- Addition
            when "100" => O_Result <= B - B; -- Subtration
            when others => O_Result <= '0'; -- Default
        end case;

        O_Zero <= '1' when O_Result = '0' else '0'; -- Output 0
    end process;
end Behaviour;
