Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;
Use ieee.std_logic_arith.all;
Entity fdiv is
  generic(N: integer:=2);       --rate=N锛孨鏄伓鏁
  port(
        clkin: IN std_logic;
        clkout: OUT std_logic
        );
End fdiv;
Architecture a of fdiv is
	signal cnt: integer range 0 to n/2-1;
	signal temp: std_logic:='0';
  Begin
	process(clkin)
	begin
		if(clkin'event and clkin='1') then
			if(cnt=	N/2-1) then
				cnt <= 0;
				temp <= NOT temp;
			else
				cnt <= cnt+1;
			end if;
		end if;
	end process;
  
	clkout <=  temp;
  End a;
