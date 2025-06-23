module fir_filter #(
    parameter NUM_TAPS = 16  // Number of filter taps
)(
    input clk,
    input reset,
    input [15:0] data_in,                  // Input data
    output [16*4-1:0] filtered_mux_out     // Flattened multiplexed output (4 pins)
);
    // Shift register for filter taps
    reg [15:0] shift_reg [0:NUM_TAPS-1];
    
    // Accumulator for filter computation
    reg [31:0] accumulator;
    
    // Filter coefficients
    reg [15:0] coeff [0:NUM_TAPS-1];
    
    // Intermediate filtered signals
    wire [16*NUM_TAPS-1:0] filtered_signals; // Flattened signals
    
    integer i;

    // Shift register and filter computation
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            accumulator <= 0;
            for (i = 0; i < NUM_TAPS; i = i + 1) begin
                shift_reg[i] <= 16'd0; // Reset shift register
            end
        end else begin
            shift_reg[0] <= data_in; // Shift new data
            for (i = 1; i < NUM_TAPS; i = i + 1) begin
                shift_reg[i] <= shift_reg[i-1];
            end

            // Accumulate for filter output
            accumulator = 32'd0;
            for (i = 0; i < NUM_TAPS; i = i + 1) begin
                accumulator = accumulator + shift_reg[i] * coeff[i];
            end
        end
    end

    // Flatten the shift register outputs into filtered_signals
    genvar j;
    generate
        for (j = 0; j < NUM_TAPS; j = j + 1) begin : signal_gen
            assign filtered_signals[j*16 +: 16] = shift_reg[j];
        end
    endgenerate

    // Multiplexing logic
    signal_multiplexer #(
        .N_signals(NUM_TAPS),
        .N_pins(4),
        .N_slots(NUM_TAPS / 4) // Assuming NUM_TAPS is divisible by 4
    ) fir_multiplexer (
        .clk(clk),
        .reset(reset),
        .signals(filtered_signals),
        .mux_out(filtered_mux_out)
    );
endmodule
