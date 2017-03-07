----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2017 11:21:22 AM
-- Design Name: 
-- Module Name: full_adder_tb - Behavioral
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

entity full_adder_tb is
--  Port ( );
end full_adder_tb;



architecture Behavioral of full_adder_tb is
component full_adder is
  port (
  a, b, cin: in std_logic;
  s, cout: out std_logic
  );
end component;

signal s, cout: std_logic;

begin

fa: full_adder port map ('1', '1', '0', s, cout);
end Behavioral;
