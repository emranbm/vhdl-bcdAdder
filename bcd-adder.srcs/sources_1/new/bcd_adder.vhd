----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2017 07:31:10 AM
-- Design Name: 
-- Module Name: bcd_adder - Behavioral
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

entity bcd_adder is
  Port (
  A, B: in bit_vector (3 downto 0);
  v: out bit_vector (7 downto 0)
  );
end bcd_adder;

architecture Behavioral of bcd_adder is

component half_adder is
  port (
  a, b: in integer range 0 to 1;
  s, cout: out integer range 0 to 1);
end component;

component multiplier is
  port (
  a, b: in bit_vector(1 downto 0);
  p: out bit_vector(3 downto 0) );
end component;

component full_adder is
  port (
  a, b, cin: in integer range 0 to 1;
  s, cout: out integer range 0 to 1);
end component;

signal p1, p2, p3, p4: bit_vector (3 downto 0);

begin

m1: multiplier port map (A(1 downto 0), B(1 downto 0), p1); 
m2: multiplier port map (A(3 downto 2), B(1 downto 0), p1); 
m3: multiplier port map (A(1 downto 0), B(3 downto 2), p1); 
m4: multiplier port map (A(3 downto 2), B(3 downto 2), p1); 

end Behavioral;
