--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:37:37 12/29/2021
-- Design Name:   
-- Module Name:   C:/Users/Usuario/Desktop/Xilinx Projects/EstructuracionLogica/TBregistro4.vhd
-- Project Name:  EstructuracionLogica
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registro4
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TBregistro4 IS
END TBregistro4;
 
ARCHITECTURE behavior OF TBregistro4 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registro4
    PORT(
         clk : IN  std_logic;
         d : INOUT  std_logic_vector(0 to 3);
         s : IN  std_logic_vector(0 to 2);
         serie : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal s : std_logic_vector(0 to 2) := (others => '0');
   signal serie : std_logic := '0';

	--BiDirs
   signal d : std_logic_vector(0 to 3);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registro4 PORT MAP (
          clk => clk,
          d => d,
          s => s,
          serie => serie
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		clk <= '1';
      s <= "100";
      wait for 100 ns;	
		clk <= '0';
		wait for 100 ns;
		clk <= '1';
      s <= "010";
      wait for 100 ns;	
		clk <= '0';
		wait for 100 ns;
		clk <= '1';
      s <= "001";
      wait for 100 ns;	
		clk <= '0';
		wait for 100 ns;
		clk <= '1';
      s <= "111";
      wait for 100 ns;	

      wait;
   end process;

END;
