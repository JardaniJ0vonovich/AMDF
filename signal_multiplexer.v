module signal_multiplexer #(
    parameter N_signals = 4,
    parameter N_pins = 4,
    parameter N_slots = N_signals / N_pins
)(
    input clk,
    input reset,
    input [16*N_signals-1:0] signals,
    output reg [3:0] mux_out  // Changed from 16*N_pins to 4-bit output
);

    reg [$clog2(N_slots)-1:0] slot; // Correct bit-width for slot

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            mux_out <= 4'b0000; // Ensure a defined reset value
            slot <= 0;
        end else begin
            if (slot < N_slots) begin
                mux_out <= signals[(slot*16*N_pins) +: 4];  // Extract 4-bit portion
                slot <= slot + 1;
            end else begin
                slot <= 0;  // Wrap around
            end
        end
    end

endmodule
