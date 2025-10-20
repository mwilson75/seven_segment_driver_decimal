module seven_seg_driver_decimal(
    input [3:0] number,
    output reg [6:0] display_out
);

always @(*) begin
    display_out = '1;
    case(number)
        4'h0 : display_out = 7'b0000001;
        4'h1 : display_out = 7'b1001111;
        4'h2 : display_out = 7'b0010010;
        4'h3 : display_out = 7'b0000110;
        4'h4 : display_out = 7'b1001100;
        4'h5 : display_out = 7'b0100100;
        4'h6 : display_out = 7'b0100000;
        4'h7 : display_out = 7'b0001111;
        4'h8 : display_out = 7'b0000000;
        4'h9 : display_out = 7'b0001100;
    endcase
end

endmodule