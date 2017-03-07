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
  A, B: in std_logic_vector (3 downto 0);
  v: out std_logic_vector (7 downto 0)
  );
end bcd_adder;

architecture Behavioral of bcd_adder is

component half_adder is
  port (
  a, b: in std_logic;
  s, cout: out std_logic);
end component;

component multiplier is
  port (
  a, b: in std_logic_vector(1 downto 0);
  p: out std_logic_vector(3 downto 0) );
end component;

component full_adder is
  port (
  a, b, cin: in std_logic;
  s, cout: out std_logic);
end component;

signal p1, p2, p3, p4: std_logic_vector (3 downto 0);
signal s11, s12, s13, s21, s22, s23, s24, s31, s32: std_logic;
signal cout11, cout12, cout13, cout21, cout22, cout23, cout24, cout31, cout32: std_logic;

begin

m1: multiplier port map (A(1 downto 0), B(1 downto 0), p1); 
m2: multiplier port map (A(3 downto 2), B(1 downto 0), p2); 
m3: multiplier port map (A(1 downto 0), B(3 downto 2), p3); 
m4: multiplier port map (A(3 downto 2), B(3 downto 2), p4);

fa11: full_adder port map(p1(2), p1(3), p3(0), s11, cout11);
fa12: full_adder port map(p1(3), p2(1), p3(1), s12, cout12);
fa13: full_adder port map(cout12, p2(2), p3(2), s13, cout13);

ha21: half_adder port map(cout11, s12, s21, cout21);
fa22: full_adder port map(cout21, s13, p3(0), s22, cout22);
fa23: full_adder port map(cout13, p2(3), p3(3), s23, cout23);
fa24: full_adder port map(cout23, cout31, p4(2), s24, cout24);

fa31: full_adder port map(cout22, s23, p4(1), s31, cout31);
ha32: half_adder port map(cout24, p4(3), s32, cout32);

v(0) <= p1(0); 
v(1) <= p1(1);
v(2) <= s11;
v(3) <= s21;
v(4) <= s22;
v(5) <= s31;
v(6) <= s24;
v(7) <= s32;

end Behavioral;
