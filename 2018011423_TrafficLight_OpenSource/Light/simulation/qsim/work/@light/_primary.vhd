library verilog;
use verilog.vl_types.all;
entity Light is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        north_cnt       : out    vl_logic_vector(3 downto 0);
        north_red       : out    vl_logic;
        north_yel       : out    vl_logic;
        north_gre       : out    vl_logic;
        west_cnt        : out    vl_logic_vector(3 downto 0);
        west_red        : out    vl_logic;
        west_yel        : out    vl_logic;
        west_gre        : out    vl_logic
    );
end Light;
