----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2025 06:12:24 PM
-- Design Name: 
-- Module Name: BlocAdaugareSold - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BlocAdaugareNumerar is
port(
    AdaugareNumerar : in std_logic;
    CLK : in std_logic;
    SumAvailable : in std_logic_vector(15 downto 0);
    SumToAdd : in std_logic_vector(15 downto 0);
    NewAmount : out std_logic_vector(15 downto 0);
    Adaugare_OK : out std_logic
);
end BlocAdaugareNumerar;
architecture Behavioral of BlocAdaugareNumerar is
    component bcd_adder is
	port(
		A : in std_logic_vector(15 downto 0);
		B : in std_logic_vector(15 downto 0);
		SUM : out std_logic_vector(15 downto 0)
		);
	end component;

     signal suma_noua : std_logic_vector(15 downto 0);
begin
    BCDADD : bcd_adder
    port map(
        A => SumAvailable,
        B => SumToAdd,
        SUM => suma_noua
    );

    NewAmount <= suma_noua when AdaugareNumerar = '1' else
                 SumAvailable;

    Adaugare_OK <= '1' when AdaugareNumerar = '1' else '0';

end Behavioral;
