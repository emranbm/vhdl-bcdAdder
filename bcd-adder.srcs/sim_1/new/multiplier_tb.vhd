----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2017 07:18:17 AM
-- Design Name: 
-- Module Name: multiplier_tb - Behavioral
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

entity multiplier_tb is
--  Port ( );
end multiplier_tb;

architecture Behavioral of multiplier_tb is
component multiplier is
  port (
  a, b: in bit_vector(1 downto 0);
  p: out bit_vector(3 downto 0) );
end component;
signal a,b: bit_vector(1 downto 0);
signal p: bit_vector(3 downto 0);
begin
a <= "10";
b <= "11";
m: multiplier port map (a,b,p);

end Behavioral;
