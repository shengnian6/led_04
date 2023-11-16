module led_04(
     clk         ,
     rst_n       ,
     led0        ,
     led1        ,
     led2        ,
     led3           
);

input        clk     ;
input        rst_n   ;
output       led0    ;
output       led1    ;
output       led2    ;
output       led3    ;
reg          led0    ;
reg          led1    ;
reg          led2    ;
reg          led3    ;


reg [25:0]  cnt0     ;
wire        add_cnt0 ;
wire        end_cnt0 ;
always @(posedge clk or negedge rst_n) begin 
    if (rst_n==0) begin
        cnt0 <= 0; 
    end
    else if(add_cnt0) begin
        if(end_cnt0)
            cnt0 <= 0; 
        else
            cnt0 <= cnt0+1 ;
   end
end
assign add_cnt0 = 1 ;
assign end_cnt0 = add_cnt0  && cnt0 == 50000000-1 ;



reg [ 3:0]  cnt1     ;
wire        add_cnt1 ;
wire        end_cnt1 ;
always @(posedge clk or negedge rst_n) begin 
    if (rst_n==0) begin
        cnt1 <= 0; 
    end
    else if(add_cnt1) begin
        if(end_cnt1)
            cnt1 <= 0; 
        else
            cnt1 <= cnt1+1 ;
   end
end
assign add_cnt1 = end_cnt0;
assign end_cnt1 = add_cnt1  && cnt1 == 14-1 ;


always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        led0 <= 1  ;
    end
    else if(add_cnt1 && cnt1==1-1)begin
        led0 <= 0  ;
    end
    else if(add_cnt1 && cnt1==2-1)begin
        led0 <= 1  ;
    end
end

always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        led1 <= 1;
    end
    else if(add_cnt1 && cnt1==3-1)begin
        led1 <= 0;
    end
    else if(add_cnt1 && cnt1==5-1)begin
        led1 <= 1;
    end
end

always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        led2 <= 1;
    end
    else if(add_cnt1 && cnt1==6-1)begin
        led2 <= 0;
    end
    else if(add_cnt1 && cnt1==9-1)begin
        led2 <= 1;
    end
end


always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        led3 <= 1;
    end
    else if(add_cnt1 && cnt1==10-1)begin
        led3 <= 0;
    end
    else if(add_cnt1 && cnt1==14-1)begin
        led3 <= 1;
    end
end

endmodule
