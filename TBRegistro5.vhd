--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:28:05 12/30/2021
-- Design Name:   
-- Module Name:   C:/Users/Usuario/Desktop/Xilinx Projects/EstructuracionLogica/TBRegistro5.vhd
-- Project Name:  EstructuracionLogica
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registro5
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
 
ENTITY TBRegistro5 IS
END TBRegistro5;
 
ARCHITECTURE behavior OF TBRegistro5 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registro5
    PORT(
         Clock : IN  std_logic;
         Dsr : IN  std_logic;
         Ds1 : OUT  std_logic;
         Ns1 : OUT  std_logic;
         Eo1 : OUT  std_logic;
         S : IN  std_logic_vector(1 downto 0);
         Q : IN  std_logic_vector(3 downto 0);
         Qout : OUT  std_logic_vector(0 to 3)
        );
    END COMPONENT;
    

   --Inputs
   signal Clock : std_logic := '0';
   signal Dsr : std_logic := '0';
   signal S : std_logic_vector(1 downto 0) := (others => '0');
   signal Q : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Ds1 : std_logic;
   signal Ns1 : std_logic;
   signal Eo1 : std_logic;
   signal Qout : std_logic_vector(0 to 3);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registro5 PORT MAP (
          Clock => Clock,
          Dsr => Dsr,
          Ds1 => Ds1,
          Ns1 => Ns1,
          Eo1 => Eo1,
          S => S,
          Q => Q,
          Qout => Qout
        );

   -- Stimulus process
   stim_proc: process
   begin		
		Q <= "1111";
      S <= "01";
		Clock <= '1';
      wait for 100 ns;
		Clock <= '0';
      wait for 100 ns;
		
		S <= "10";
		Clock <= '1';
      wait for 100 ns;
		Clock <= '0';
      wait for 100 ns;
		
		S <= "11";
		Clock <= '1';
      wait for 100 ns;
		Clock <= '0';
      wait for 100 ns;
   end process;

END;
