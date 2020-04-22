library verilog;
use verilog.vl_types.all;
entity Serial4FullAdder_vlg_sample_tst is
    port(
        a_in            : in     vl_logic_vector(3 downto 0);
        b_in            : in     vl_logic_vector(3 downto 0);
        carry_in        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Serial4FullAdder_vlg_sample_tst;
