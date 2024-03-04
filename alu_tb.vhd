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
end Behaviour;
