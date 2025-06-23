# AMDF

This repository contains the MATLAB and Verilog implementations of a **computationally efficient, low-power, and hardware-optimized** framework for **pulse rate estimation** from compressed **photoplethysmogram (PPG)** signals. The project leverages the **Average Magnitude Difference Function (AMDF)** in combination with **Compressed Sensing (CS)** and is designed for **IoT and Edge Analytics** applications.

---

## 🔍 Abstract

This study explores the use of AMDF with compressed sensing to overcome challenges of high data volume and real-time processing in wearable PPG signal acquisition systems. The approach supports energy-efficient signal compression and robust pulse rate extraction, validated through MATLAB simulations and hardware implementation on FPGA and ASIC platforms.

- **Compression Ratio**: Up to 70%  
- **Reconstruction Accuracy**: < 5% RMSE  
- **Power Consumption (ASIC)**: 157.375 µW  
- **Area (ASIC)**: 605.520 µm²  
- **Technology Node**: 90nm CMOS  
- **BPM Error (AMDF)**: 0.0359 @ CR 0.95

---


---

## 🧠 Key Features

- **AMDF Algorithm**: Efficient time-domain method for detecting periodicity in physiological signals.
- **Compressed Sensing (CS)**: Reduces dimensionality for low-power signal acquisition and transmission.
- **Signal Preprocessing**: FIR filters and multiplexing reduce baseline drift and signal range.
- **Pulse Rate Estimation**: Calculated from AMDF minima with signal quality check.
- **FPGA/ASIC Realization**: Verified on Vivado & Cadence using 90nm CMOS for compact area and low energy.

---

## 🛠️ How to Use

### Vivado

Copy and paste the code in Xilinx Vivado and put the top.v as the op module. Then run the simulation.


## 📊 Performance Summary

### Algorithm Comparison

| Algorithm        | Pulse Rate (BPM) | Compression Ratio | Mean Error |
|------------------|------------------|-------------------|------------|
| **AMDF**         | 83.82            | 0.95              | 0.0359     |
| FFT              | 83.82            | 0.95              | 0.0370     |
| Autocorrelation  | 83.82            | 0.95              | 0.0367     |

> **Note:** AMDF showed the best performance in terms of both accuracy and computational efficiency.

---

### FPGA Utilization (Xilinx Vivado)

- **LUT Utilization**: 33%
- **Flip-Flop Utilization**: 8%

---

### ASIC Implementation Summary (90nm CMOS)

| Metric           | Value          |
|------------------|----------------|
| Cell Count       | 68             |
| Total Area       | 605.520 µm²    |
| Power Consumption| 157.375 µW     |
| Internal Power   | 78.59%         |
| Switching Power  | 19.96%         |
| Leakage Power    | 1.45%          |

---

### Timing Summary

- **Path Delay**: 2.5 ns  
- **Slack**: +2.258 ns  
- **Conclusion**: Meets timing constraints with no violations.

---

### Validation

- MATLAB and Verilog outputs were matched perfectly.
- Successfully tested on both normal and pathological PPG signals.
- Maintained accuracy under noise and drift conditions.

## 🔭 Future Scope

- **Real-time wearable implementations using FPGA or ASIC**  
  Deploy the AMDF-based framework in wearable devices for real-time pulse rate monitoring with minimal power consumption and compact area utilization.

- **Support for multimodal signals like ECG and SpO₂**  
  Extend the algorithm to process additional physiological signals for more comprehensive health assessments and diagnostics.

- **Integration with secure, encrypted IoT health monitoring networks**  
  Ensure patient data privacy and system reliability through hardware-level encryption and secure communication protocols for connected healthcare systems.
