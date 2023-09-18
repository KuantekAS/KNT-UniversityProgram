library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- use IEEE.STD_LOGIC_ARITH.ALL;
-- use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity top is
generic (
c_clkfreq		: integer := 33_333_333;
c_baudrate		: integer := 115_200
);

port (
clk				: in std_logic;
rx_i            : in std_logic;
tx_o			: out std_logic

);
end top;

architecture Behavioral of top is

component uart_rx is
generic(
c_clkfreq		: integer := 100_000_000;
c_baudrate		: integer := 115_200
);
port (
clk				: in std_logic;
rx_i            : in std_logic;
dout_o			: out std_logic_vector (7 downto 0);
rx_done_tick_o  : out std_logic
);
end component;

component uart_tx is
generic (
c_clkfreq		: integer := 100_000_000;
c_baudrate		: integer := 115_200;
c_stopbit		: integer := 2
);
port (
clk				: in std_logic;
din_i			: in std_logic_vector (7 downto 0);
tx_start_i		: in std_logic;
tx_o			: out std_logic;
tx_done_tick_o	: out std_logic
);
end component;
signal dout         : std_logic_vector (7 downto 0) := (others => '0');
signal rx_done_tick : std_logic := '0';
signal tx_start     : std_logic := '0';

begin

receiver_i : uart_rx 
generic map(
c_clkfreq		=> c_clkfreq,
c_baudrate		=> c_baudrate	
)
port map (
clk				=> clk,
rx_i            => rx_i,
dout_o			=> dout,
rx_done_tick_o  => rx_done_tick
);


transmitter_o : uart_tx 
generic map (
c_clkfreq		=> c_clkfreq,
c_baudrate		=> c_baudrate,
c_stopbit		=>1
)
port map (
clk				=> clk,
din_i			=> dout,
tx_start_i		=> tx_start,
tx_o			=> tx_o,
tx_done_tick_o	=> open
);
process (clk) begin
if (rising_edge(clk)) then
    tx_start <= '0';
    if(rx_done_tick='1') then
        tx_start<='1';
    end if;
end if;

end process;
end Behavioral;