library verilog;
use verilog.vl_types.all;
entity CarryLookAheadAdder_vlg_check_tst is
    port(
        carry_out       : in     vl_logic;
        sum_out         : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end CarryLookAheadAdder_vlg_check_tst;
