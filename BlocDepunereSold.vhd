
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BlocDepunereSold is
port(
    COUNT : in std_logic;
    UPDOWN : in std_logic;
    DepunereSold : in std_logic;
    CLK2 : in std_logic;
    DISPLAY : out std_logic_vector(15 downto 0);
    SumaDepusa : out std_logic_vector(15 downto 0)
);
end BlocDepunereSold;

architecture Behavioral of BlocDepunereSold is
    signal reset : std_logic;
    signal suma : std_logic_vector(15 downto 0);

    component DigitReader
        port(
            COUNT : in std_logic;
            UPDOWN : in std_logic;
            RESET : in std_logic;
            CLK : in std_logic;
            NUMBER : out std_logic_vector(15 downto 0)
        );
    end component;
begin
    reset <= not DepunereSold;
    DISPLAY <= suma;
    SumaDepusa <= suma;

    DR: DigitReader
    port map(
        COUNT => COUNT,
        UPDOWN => UPDOWN,
        RESET => reset,
        CLK => CLK2,
        NUMBER => suma
    );
end Behavioral;