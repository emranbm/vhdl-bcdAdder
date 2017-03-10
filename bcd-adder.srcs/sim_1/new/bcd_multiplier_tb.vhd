----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2017 07:13:15 PM
-- Design Name: 
-- Module Name: bcd_adder_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd_multiplier_tb is
--  Port ( );
end bcd_multiplier_tb;

architecture Behavioral of bcd_multiplier_tb is

component bcd_multiplier is
  Port (
  A, B: in std_logic_vector (3 downto 0);
  v: out std_logic_vector (7 downto 0)
  );
end component;

signal A, B: std_logic_vector (3 downto 0);
signal v: std_logic_vector (7 downto 0);

begin

bcdMultiplier: bcd_multiplier port map (A, B, v);

A <= "0001" after 0ns;
B <= "0001" after 0ns;

--A <= "0001" after 10ns;
--B <= "0010" after 10ns;

--A <= "0010" after 20ns;
--B <= "0010" after 20ns;

--A <= "0011" after 30ns;
--B <= "0010" after 30ns;

--A <= "0011" after 40ns;
--B <= "0011" after 40ns;

--A <= "0100" after 50ns;
--B <= "0011" after 50ns;

--A <= "0111" after 60ns;
--B <= "0101" after 60ns;

--A <= "1001" after 70ns;
--B <= "1001" after 70ns;

--A <= "1000" after 80ns;
--B <= "0001" after 80ns;

--A <= "1001" after 90ns;
--B <= "0001" after 90ns;

end Behavioral;
