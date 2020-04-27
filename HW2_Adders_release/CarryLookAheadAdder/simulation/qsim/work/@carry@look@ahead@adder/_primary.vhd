library verilog;
use verilog.vl_types.all;
entity CarryLookAheadAdder is
    port(
        a_in            : in     vl_logic_vector(3 downto 0);
        b_in            : in     vl_logic_vector(3 downto 0);
        carry_in        : in     vl_logic;
        sum_out         : out    vl_logic_vector(3 downto 0);
        carry_out       : out    vl_logic
    );
end CarryLookAheadAdder;
