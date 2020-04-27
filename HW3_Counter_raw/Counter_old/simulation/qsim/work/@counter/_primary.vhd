library verilog;
use verilog.vl_types.all;
entity Counter is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        natural_out_encoded_0: out    vl_logic_vector(6 downto 0);
        natural_out_encoded_1: out    vl_logic_vector(6 downto 0)
    );
end Counter;
