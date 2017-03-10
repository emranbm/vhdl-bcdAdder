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

A <= "0000" after 0ns, "0001" after 10ns, "0010" after 20ns, "0011" after 30ns, "0100" after 40ns, "0101" after 50ns, "0110" after 60ns, "0111" after 70ns, "1000" after 80ns, "1001" after 90ns;
B <= "1010" after 0ns, "0011" after 10ns, "0011" after 20ns, "1001" after 30ns, "0110" after 40ns, "0001" after 50ns, "0101" after 60ns, "1000" after 70ns, "0010" after 80ns, "0111" after 90ns;

end Behavioral;
