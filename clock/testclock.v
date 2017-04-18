module stopwatch_01(clk,key_reset,key_start_pasue,key_display_stop,hex0,hex1,hex2,hex3,hex4,hex5,hex6,hex7,led0,led1,led2,led3);
	
	input		clk,key_reset,key_start_pasue,key_display_stop;
	output [6:0]	hex0,hex1,hex2,hex3,hex4,hex5,hex6,hex7;
	output	led0,led1,led2,led3;
	reg	led0,led1,led2,led3;
	reg	display_work;
	reg	counter_work;
	parameter	DELAY_TIME=10000000;
	//key0,key2,key3为操作按钮
	reg	[3:0]	hour_display_high;
	reg	[3:0]	hour_display_low;
	reg	[3:0]	minute_display_high;
	reg	[3:0]	minute_display_low;
	reg	[3:0]	second_display_high;
	reg	[3:0]	second_display_low;
	reg	[3:0]	msecond_display_high;
	reg	[3:0]	msecond_display_low;

	reg	[3:0]	hour_counter_high;
	reg	[3:0]	hour_counter_low;
	reg	[3:0]	minute_counter_high;
	reg	[3:0]	minute_counter_low;
	reg	[3:0]	second_counter_high;
	reg	[3:0]	second_counter_low;
	reg	[3:0]	msecond_counter_high;
	reg	[3:0]	msecond_counter_low;
	
	reg	start;
	reg	display;
	reg	[31:0]counter;
	reg	cnt;
	reg	reset;
	reg	cnt1;
	reg	cnt2;
	reg	cnt3;
	reg	[31:0]counter1;
	reg	[31:0]counter2;
	reg	[31:0]counter3;

	
	sevenseg	led_hour_display_high(hour_display_high,hex7);
	sevenseg	led_hour_display_low(hour_display_low,hex6);
	sevenseg	led_minute_display_high(minute_display_high,hex5);
	sevenseg	led_minute_display_low(minute_display_low,hex4);
	sevenseg	led_second_display_high(second_display_high,hex3);
	sevenseg	led_second_display_low(second_display_low,hex2);
	sevenseg	led_msecond_display_high(msecond_display_high,hex1);
	sevenseg	led_msecond_display_low(msecond_display_low,hex0);
	
	always@(posedge clk)
		begin
			if(counter==500000)
				begin
				counter<=0;
				cnt=1;
			
			if(key_start_pasue==0)
				begin
					if(counter1==50)
						begin
							start=~start;
							counter1<=0;
							led0=start;
						end
					else
						counter1<=counter1+1;
				end
			
			if(key_display_stop==0)
				begin
					if(counter3==50)
						begin
							display=~display;
							counter3<=0;
							led2=display;
						end
					else
						counter3<=counter3+1;
				end
				
			if(key_reset==0)
				begin
					if(counter2==50)
						begin
							reset=~reset;
							counter2<=0;
							led1=reset;
						end
					else
						counter2<=counter2+1;
				end
			//保证输入稳定进行消抖
			if(start==1)
				begin
					msecond_counter_low=msecond_counter_low+1;
					cnt=0;
				end
			if(msecond_counter_low==10)
				begin
					msecond_counter_high=msecond_counter_high+1;
					msecond_counter_low=0;
				end
			if(msecond_counter_high==10)
				begin
					second_counter_low=second_counter_low+1;
					msecond_counter_high=0;
				end
			if(second_counter_low==10)
				begin
					second_counter_high=second_counter_high+1;
					second_counter_low=0;
				end
			if(second_counter_high==6)
				begin
					minute_counter_low=minute_counter_low+1;
					second_counter_high=0;
				end
			if(minute_counter_low==10)
				begin
					minute_counter_high=minute_counter_high+1;
					minute_counter_low=0;
				end
			if(minute_counter_high==6)
				begin
					hour_counter_low=hour_counter_low+1;
					minute_counter_high=0;
				end
			if(hour_counter_low==10)
				begin
					hour_counter_high=hour_counter_high+1;
					hour_counter_low=0;
				end
			if(reset==1)
				begin
				msecond_display_low=0;
				msecond_display_high=0;
				second_display_low=0;
				second_display_high=0;
				minute_display_low=0;
				minute_display_high=0;
				hour_display_low=0;
				hour_display_high=0;
				msecond_counter_low=0;
				msecond_counter_high=0;
				second_counter_low=0;
				second_counter_high=0;
				minute_counter_low=0;
				minute_counter_high=0;
				hour_counter_low=0;
				hour_counter_high=0;
				reset=0;
				end
			if(display==0)
				begin
				msecond_display_low=msecond_counter_low;
				msecond_display_high=msecond_counter_high;
				second_display_low=second_counter_low;
				second_display_high=second_counter_high;
				minute_display_low=minute_counter_low;
				minute_display_high=minute_counter_high;
				hour_display_low=hour_counter_low;
				hour_display_high=hour_counter_high;
				end
			end
			else
				counter<=counter+1;
		end
		
endmodule

module sevenseg(data,ledsegments);
	input [3:0] data;
	output [6:0]ledsegments;
	reg[6:0] ledsegments;
	
	always@(*)
		case(data)
			0:ledsegments=7'b100_0000;
			1:ledsegments=7'b111_1001;
			2:ledsegments=7'b010_0100;
			3:ledsegments=7'b011_0000;
			4:ledsegments=7'b001_1001;
			5:ledsegments=7'b001_0010;
			6:ledsegments=7'b000_0010;
			7:ledsegments=7'b111_1000;
			8:ledsegments=7'b000_0000;
			9:ledsegments=7'b001_0000;
		default:ledsegments=7'b111_1111;
		endcase
endmodule