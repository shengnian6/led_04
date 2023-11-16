module tb_led_04;
parameter  CYCLE = 20;
reg        clk    ;
reg        rst_n  ;
wire       led0   ;
wire       led1   ;
wire       led2   ;
wire       led3   ;

led_04 uut(
    .clk    (clk    )  ,
    .rst_n  (rst_n  )  ,
    .led0   (led0   )  , 
    .led1   (led1   )  , 
    .led2   (led2   )  , 
    .led3   (led3   )    
);


initial begin
    clk = 0;
    forever#(CYCLE/2)begin
        clk = ~clk; 
    end
end


initial begin
    #1;
    rst_n = 0;
    #(10*CYCLE);
    rst_n = 1;
end





endmodule 
