module seven_seg_driver_decimal(
    input [3:0] number,
    output [6:0] display_out
);
reg [6:0] segment_val;
always @(*) begin
    segment_val = {7{1'b1}};
    case(number)
        4'h0 : segment_val = 7'b0000001;
        4'h1 : segment_val = 7'b1001111;
        4'h2 : segment_val = 7'b0010010;
        4'h3 : segment_val = 7'b0000110;
        4'h4 : segment_val = 7'b1001100;
        4'h5 : segment_val = 7'b0100100;
        4'h6 : segment_val = 7'b0100000;
        4'h7 : segment_val = 7'b0001111;
        4'h8 : segment_val = 7'b0000000;
        4'h9 : segment_val = 7'b0001100;
    endcase
end

assign display_out = segment_val;

endmodule