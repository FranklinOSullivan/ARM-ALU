library ieee;
use ieee.std_logic_1164.all;

entity alu_tb is 
end alu_tb;

architecture Behaviour of alu_tb is 
    component alu 
        port (
            I_A, I_B : in std_logic;
            I_OP : in std_logic_vector(2 downto 0);
            O_Result : out std_logic;
            O_Zero : out std_logic
        );
    end component;

    signal A_TB, B_TB, Result_TB, Zero_TB : std_logic;
    signal OP_TB : std_logic_vector(2 downto 0);

begin
    dut: alu port map (I_A => A_TB, I_B => B_TB, I_OP => OP_TB, O_Result => Result_TB, O_Zero => Zero_TB);

    -- Test cases
    process
    begin
        -- Test 1: AND
        A_TB <= '0', B_TB <= '0', OP_TB <= "000";
        wait for 10 ns;
        assert Result_TB = '0' and Zero_TB = '0' report "Test case 1 Passes / Failed"
        
        wait;
    end process;
end Behaviour;
