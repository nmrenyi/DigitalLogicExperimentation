library verilog;
use verilog.vl_types.all;
entity DigitalLife is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        natural_out_hex : out    vl_logic_vector(3 downto 0);
        natural_out     : out    vl_logic_vector(3 downto 0);
        even_out        : out    vl_logic_vector(3 downto 0);
        odd_out         : out    vl_logic_vector(3 downto 0);
        natural_out_encoded: out    vl_logic_vector(6 downto 0);
        even_out_encoded: out    vl_logic_vector(6 downto 0);
        odd_out_encoded : out    vl_logic_vector(6 downto 0)
    );
end DigitalLife;
