library verilog;
use verilog.vl_types.all;
entity DigitalLife_vlg_check_tst is
    port(
        even_out        : in     vl_logic_vector(3 downto 0);
        natural_out     : in     vl_logic_vector(6 downto 0);
        natural_out_test: in     vl_logic_vector(3 downto 0);
        odd_out         : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end DigitalLife_vlg_check_tst;
