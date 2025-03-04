----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2025 12:56:28 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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
 
entity sevenseg_decoder_tb is
--  Port ( );
end sevenseg_decoder_tb;
 
architecture Behavioral of sevenseg_decoder_tb is
 
component sevenseg_decoder is
    port(
        i_Hex : in std_logic_vector (3 downto 0);
        o_seg_n : out std_logic_vector (6 downto 0));
    end component sevenseg_decoder;
 
    signal w_Hex : std_logic_vector (3 downto 0);
    signal w_seg : std_logic_vector (6 downto 0);
 
begin
    bench : sevenseg_decoder 
    port map (
	  i_Hex => w_Hex,
	  o_seg_n => w_seg
	);
 
 
test_bench : process
begin
		w_Hex <= x"0"; wait for 10 ns;
		  assert w_seg = b"1000000" report "error on x0" severity failure;
        w_Hex <= x"1"; wait for 10 ns;
          assert w_seg = b"1111001" report "error on x1" severity failure;
        w_Hex <= x"2"; wait for 10 ns;
          assert w_seg = b"0100100" report "error on x2" severity failure;
        w_Hex <= x"3"; wait for 10 ns;
          assert w_seg = b"0110000" report "error on x3" severity failure;
        w_Hex <= x"4"; wait for 10 ns;
          assert w_seg = b"0011001" report "error on x4" severity failure;
        w_Hex <= x"5"; wait for 10 ns;
          assert w_seg = b"0010010" report "error on x5" severity failure;
        w_Hex <= x"6"; wait for 10 ns;
          assert w_seg = b"0000010" report "error on x6" severity failure;
        w_Hex <= x"7"; wait for 10 ns;
          assert w_seg = b"1111000" report "error on x7" severity failure;
        w_Hex <= x"8"; wait for 10 ns;
          assert w_seg = b"0000000" report "error on x8" severity failure;
        w_Hex <= x"9"; wait for 10 ns;
          assert w_seg = b"0011000" report "error on x9" severity failure;
        w_Hex <= x"a"; wait for 10 ns;
          assert w_seg = b"0001000" report "error on xa" severity failure;
        w_Hex <= x"b"; wait for 10 ns;
          assert w_seg = b"0000011" report "error on xb" severity failure;
        w_Hex <= x"c"; wait for 10 ns;
          assert w_seg = b"0100111" report "error on xc" severity failure;
        w_Hex <= x"d"; wait for 10 ns;
          assert w_seg = b"0100001" report "error on xd" severity failure;
        w_Hex <= x"e"; wait for 10 ns;
          assert w_seg = b"0000110" report "error on xe" severity failure;
        w_Hex <= x"f"; wait for 10 ns;
          assert w_seg = b"0001110" report "error on xf" severity failure;
        wait;
        end process;
 
end Behavioral;