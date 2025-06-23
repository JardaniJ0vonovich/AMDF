module amdf#(
    parameter N = 12,                  // Length of the input signal
    parameter L_min = 4,               // Minimum lag
    parameter L_max = 8                // Maximum lag
)(
    input clk,                          // System clock
    input reset,                        // Reset signal
    input [16*N-1:0] signal,            // Input signal (16 bits per sample)
    output [16*4-1:0] amdf_signals      // Output: first 4 AMDF values (flattened)
);

    reg [15:0] amdf_array [0:L_max-L_min];         // Array to hold AMDF results
    wire [16*(L_max-L_min+1)-1:0] amdf_signals_flat; // Flattened AMDF array
    reg [31:0] sum;
    reg [15:0] signal_a, signal_b, abs_diff;
    integer i, k, quotient;

    // Compute AMDF
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            for (k = 0; k <= L_max - L_min; k = k + 1) begin
                amdf_array[k] <= 0;
            end
        end else begin
            for (k = L_min; k <= L_max; k = k + 1) begin
                sum = 0;
                for (i = 0; i < N - k; i = i + 1) begin
                    signal_a = signal[(i+1)*16-1 -: 16];
                    signal_b = (i + k < N) ? signal[(i + k + 1)*16-1 -: 16] : 16'd0;
                    abs_diff = (signal_a > signal_b) ? (signal_a - signal_b) : (signal_b - signal_a);
                    sum = sum + abs_diff;
                end

                 
                quotient = 0;
                while (sum >= (N - k)) begin
                    sum = sum - (N - k);
                    quotient = quotient + 1;
                end

                amdf_array[k - L_min] <= quotient[15:0];
            end
        end
    end

    // Flatten the array
    generate
        genvar idx;
        for (idx = 0; idx <= L_max - L_min; idx = idx + 1) begin
            assign amdf_signals_flat[idx*16 +: 16] = amdf_array[idx];
        end
    endgenerate

    // Connect the first 4 AMDF outputs
    assign amdf_signals = amdf_signals_flat[0 +: 16*4];

endmodule
