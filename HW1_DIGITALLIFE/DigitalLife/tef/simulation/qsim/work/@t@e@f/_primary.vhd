library verilog;
use verilog.vl_types.all;
entity TEF is
    port(
        EN              : in     vl_logic;
        T               : in     vl_logic;
        CLK             : in     vl_logic;
        Q               : out    vl_logic
    );
end TEF;
