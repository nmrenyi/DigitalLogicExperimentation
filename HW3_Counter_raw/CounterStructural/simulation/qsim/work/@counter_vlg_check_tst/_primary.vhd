library verilog;
use verilog.vl_types.all;
entity Counter_vlg_check_tst is
    port(
        natural_out_encoded_0: in     vl_logic_vector(6 downto 0);
        natural_out_encoded_1: in     vl_logic_vector(6 downto 0);
        natural_out_test_0: in     vl_logic_vector(3 downto 0);
        natural_out_test_1: in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Counter_vlg_check_tst;
