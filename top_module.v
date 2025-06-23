module top (
    input clk,
    input reset,
    input [85:0] signal,    // Reduced signal size (16 bits per signal, 12 signals)
    output [3:0] amdf_mux_out     // Reduced output pins (multiplexed)
);
    wire [16*4-1:0] amdf_signals; // AMDF array output (flattened, now with 4 signals)

    // Instantiate AMDF module with a reduced number of signals
    amdf #(
        .N(12),                  // Reduced N to 12 signals
        .L_min(4),               // Adjust min lag
        .L_max(8)                // Adjust max lag
    ) amdf_inst (
        .clk(clk),
        .reset(reset),
        .signal(signal),
        .amdf_signals(amdf_signals)
    );

    // Instantiate signal multiplexer with reduced signals
    signal_multiplexer #(
        .N_signals(4),            // Reduced number of signals (4)
        .N_pins(4),               // 4 pins for output
        .N_slots(1)               // Only 1 slot for multiplexing
    ) multiplexer_inst (
        .clk(clk),
        .reset(reset),
        .signals(amdf_signals),
        .mux_out(amdf_mux_out)
    );
endmodule
