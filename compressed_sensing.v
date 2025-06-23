module compressed_sensing #(
    parameter N = 150, // Length of input signal
    parameter M = 40   // Number of compressed outputs
)(
    input clk,                       // System clock
    input reset,                     // Reset signal
    input [16*N-1:0] ppgSignal,      // Flattened input PPG signal
    output [16*4-1:0] compressed_mux_out // Flattened multiplexed outputs (4 pins)
);
    // 1D Array declaration for Phi (16-bit elements, MxN matrix)
    reg [15:0] Phi_flat [0:(M*N)-1]; 
    
    reg [16*M-1:0] compressed_signals;  // Compressed signals
    reg [47:0] accumulator;  // Increased bit-width
    integer i, j;

    // Initialize Phi (Optional)
    initial begin
        for (i = 0; i < M; i = i + 1) begin
            for (j = 0; j < N; j = j + 1) begin
                Phi_flat[i * N + j] = $random % 2; // Random binary values (0 or 1)
            end
        end
    end

    // Generate compressed signals
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            compressed_signals <= 0;
            accumulator <= 0; // Reset accumulator
        end else begin
            for (i = 0; i < M; i = i + 1) begin
                accumulator = 0; // Reset accumulator
                for (j = 0; j < N; j = j + 1) begin
                    accumulator = accumulator + (Phi_flat[i * N + j] * ppgSignal[j*16 +: 16]); 
                end
                compressed_signals[i*16 +: 16] = accumulator[15:0]; // Truncate
            end
        end
    end

    // Instantiate multiplexer
    signal_multiplexer #(
        .N_signals(M),
        .N_pins(4),
        .N_slots((M + 3) / 4) // Ceil division
    ) compressed_multiplexer (
        .clk(clk),
        .reset(reset),
        .signals(compressed_signals),
        .mux_out(compressed_mux_out)
    );
endmodule
