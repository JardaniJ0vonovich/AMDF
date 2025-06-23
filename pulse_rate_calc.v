module pulse_rate_calc #(
    parameter Fs = 125,                // Sampling frequency in Hz
    parameter M = 120,                // Number of compressed measurements
    parameter N = 150,                // Original signal length
    parameter L_min = 4,              // Minimum lag
    parameter L_max = 8               // Maximum lag
)(
    input [16*(L_max-L_min+1)-1:0] amdf_flat, // Flattened AMDF input
    output reg [31:0] pulse_rate_bpm          // Calculated pulse rate in BPM
);

    // Internal signals
    integer i;
    reg [15:0] amdf [0:L_max-L_min];  // Local AMDF array for computation
    reg [15:0] min_value;
    reg [31:0] minLag;
    reg [31:0] Fm;                   // Effective sample rate after compression

    // Unflatten the AMDF input for computation
    always @* begin
        for (i = 0; i <= L_max - L_min; i = i + 1) begin
            amdf[i] = amdf_flat[i*16 +: 16];
        end
    end

    // Pulse rate calculation
    always @* begin
        // Initialize minimum value and lag
        min_value = 16'hFFFF; // Start with a large value
        minLag = L_min;       // Start with the minimum lag

        // Find the first minimum in AMDF
        for (i = L_min; i <= L_max; i = i + 1) begin
            if (amdf[i - L_min] < min_value) begin
                min_value = amdf[i - L_min];
                minLag = i;
            end
        end

        // Calculate the effective sampling rate after compression
        Fm = (Fs * M) / N;

        // Calculate the pulse rate (PR) in BPM
        pulse_rate_bpm = (Fm * 60) / minLag;
    end

endmodule
