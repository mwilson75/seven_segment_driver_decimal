module seven_seg_driver_decimalTB();

wire [6:0] display;
reg [3:0] test_num = '0;
seven_seg_driver_decimal uut(
    .number(test_num),
    .display_out(display)
);


initial begin
    $dumpfile("dump.vcd"); $dumpvars;

    #2
    assert(display == 7'b0000001);
    test_num <= test_num + 1;
    #2
    assert(display == 7'b1001111);
    test_num<= test_num + 1;
    #2
    assert(display == 7'b0010010);
    test_num<= test_num + 1;
    #2
    assert(display == 7'b0000110);
    test_num<= test_num + 1;
    #2
    assert(display == 7'b1001100);
    test_num<= test_num + 1;
    #2
    assert(display == 7'b0100100);
    test_num<= test_num + 1;
    #2
    assert(display == 7'b0100000);
    test_num<= test_num + 1;
    #2
    assert(display == 7'b0001111);
    test_num<= test_num + 1;
    #2
    assert(display == 7'b0000000);
    test_num<= test_num + 1;
    #2
    assert(display == 7'b0001100);
    $finish();
end

endmodule
