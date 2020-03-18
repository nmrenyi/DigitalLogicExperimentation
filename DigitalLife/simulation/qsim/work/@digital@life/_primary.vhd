library verilog;
use verilog.vl_types.all;
entity DigitalLife is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        natural_out_test: out    vl_logic_vector(3 downto 0);
        natural_out     : out    vl_logic_vector(6 downto 0);
        odd_out         : out    vl_logic_vector(3 downto 0);
        even_out        : out    vl_logic_vector(3 downto 0)
    );
end DigitalLife;
