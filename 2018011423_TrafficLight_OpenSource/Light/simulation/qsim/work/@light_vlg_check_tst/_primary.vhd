library verilog;
use verilog.vl_types.all;
entity Light_vlg_check_tst is
    port(
        north_cnt       : in     vl_logic_vector(3 downto 0);
        north_gre       : in     vl_logic;
        north_red       : in     vl_logic;
        north_yel       : in     vl_logic;
        west_cnt        : in     vl_logic_vector(3 downto 0);
        west_gre        : in     vl_logic;
        west_red        : in     vl_logic;
        west_yel        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Light_vlg_check_tst;
