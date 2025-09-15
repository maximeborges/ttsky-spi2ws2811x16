library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spi is
    generic(
		n_bits : natural := 8  -- Number of bits per word (typically 24 for RGB)
	);
    port (
        -- Global Signals
        i_clock  : in  std_logic;
        i_reset  : in  std_logic;

        -- SPI Interface
        i_copi   : in std_logic;
        i_cs     : in std_logic;

        -- Data Link
        o_command        : out  std_logic_vector(7 downto 0);
        o_command_ready  : out  std_logic;
        
        o_word           : out  std_logic_vector(n_bits - 1 downto 0);
        o_word_ready     : out  std_logic
    );
end entity spi;

architecture rtl of spi is
    signal bit_count       : integer range 0 to n_bits := 0;
    signal current_command : std_logic_vector(7 downto 0) := (others => '0');
    signal current_word    : std_logic_vector(0 to n_bits - 1) := (others => '0');

    -- State machine states
    type state_t is (
        STATE_IDLE,
        STATE_RECEIVE_COMMAND,
        STATE_RECEIVE_WORD
    );
    signal state : state_t;

begin
    process(i_reset, i_clock) is
    begin
        if i_reset = '1' then
            state <= STATE_RECEIVE_COMMAND;
            bit_count <= 0;
            current_command <= (others => '0');
            current_word <= (others => '0');
            o_command <= (others => '0');
            o_command_ready <= '0';
            o_word <= (others => '0');
            o_word_ready <= '0';
        elsif rising_edge(i_clock) then
            case state is
                when STATE_RECEIVE_COMMAND =>
                    if i_cs = '0' then  -- Chip select deactivated
                        state <= STATE_IDLE;
                    else
                        current_command(bit_count) <= i_copi;
                        if bit_count = 7 then
                            o_command <= current_command;
                            o_command_ready <= '1';
                            bit_count <= 0;
                            state <= STATE_RECEIVE_WORD;
                        else
                            bit_count <= bit_count + 1;
                        end if;
                    end if;

                when STATE_RECEIVE_WORD =>
                    if i_cs = '0' then  -- Chip select deactivated
                        state <= STATE_IDLE;
                    else
                        o_command_ready <= '0';
                        -- current_word(bit_count) <= i_copi;
                        if bit_count = n_bits - 1 then
                            o_word <= current_word(0 to n_bits - 2) & i_copi;
                            -- o_word <= current_word;
                            o_word_ready <= '1';
                            bit_count <= 0;
                        else
                            current_word(bit_count) <= i_copi;
                            o_word_ready <= '0';
                            -- if bit_count = 2 then
                            --     o_word_ready <= '0';
                            -- end if;
                            bit_count <= bit_count + 1;
                        end if;
                    end if;

                when STATE_IDLE =>
                    o_command_ready <= '0';
                    o_word_ready <= '0';
                    bit_count <= 0;
                    if i_cs = '1' then
                        state <= STATE_RECEIVE_COMMAND;
                    end if;
                    
                when others =>
                    state <= STATE_IDLE;  -- Fallback to idle state

            end case;
        end if;
    end process;
end architecture rtl;