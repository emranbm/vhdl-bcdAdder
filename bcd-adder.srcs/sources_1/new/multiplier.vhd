----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2017 07:38:33 AM
-- Design Name: 
-- Module Name: multiplier - Behavioral
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

entity multiplier is
  port (
  a, b: in std_logic_vector (1 downto 0);
  p: out std_logic_vector (3 downto 0) );
end multiplier;

architecture Behavioral of multiplier is
begin
-- Based on 16-row truth table
p(3) <= a(1) and a(0) and b(1) and b(0);
p(2) <= a(1) and b(1) and ((not a(0)) or (a(0) and not b(0)));
p(1) <= (not a(1) and a(0) and b(1)) or
        (a(1) and not a(0) and b(0)) or
        (a(1) and a(0) and (b(1) xor b(0)));
p(0) <= (not a(1) and a(0) and b(0)) or
        (a(1) and a(0) and b(0));
end Behavioral;
