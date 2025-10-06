# CAN ↔ UDP Gateway on AURIX TC375 Lite

This repository provides firmware and documentation for implementing a **bidirectional CAN ↔ UDP gateway** on the **Infineon AURIX™ TC375 Lite Kit**.  
The project enables seamless communication between a CAN bus and Ethernet (UDP/IP), bridging automotive communication with IP-based systems.Messages are transmitted and received using the PCAN-USB interface monitored with PCAN-View, and validated with a Saleae Logic Analyzer (CAN analyzer). ILLD library V1.20.1. and AURIX development studio version 1.10.16 are used.



##  Features

- Bidirectional conversion: **CAN → UDP** and **UDP → CAN**.  
- Based on **Infineon AURIX TC375 Lite Kit** with **TLE9251V CAN transceiver**.  
- Configurable **MAC** and **IP** addresses in `bridge_common.h`.  
- Uses **lwIP stack** for UDP communication.  
- Verified with:
  - **PEAK PCAN-USB FD Pro**
  - **Saleae Logic Analyzer**
  - **PCAN-View software**
  - **Wireshark** (Ethernet monitoring)  
- Demonstrated transmission of **CAN ID 0x300h** at 500 kbit/s.  

---

# AURIX TC375 CAN ↔ UDP Gateway — Minimal Build Guide

This project has **two firmware variants** you can flash to the TC375 Lite Kit:

- **Board A (CAN → UDP)**
- **Board B (UDP → CAN)** **← default**

Your repository will ship with **Board B enabled by default**. You can switch to **Board A** by replacing the main file as "cpu0_Main.c". "Board_A_aurix375litekit.txt" and "Board_B_aurix375litekit.txt".

---
##  Disable DHCP (use static IP)
Edit your **`lwipopts.h`** and make sure DHCP is **disabled**:
"lwipopts.h" 
#define LWIP_DHCP *



---
##  System Overview

- **Board A (CAN → UDP):** Receives CAN frames and forwards them as UDP packets.  
- **Board B (UDP → CAN):** Receives UDP packets and retransmits them on the CAN bus.  
- Both boards communicate over **UDP port 20000**.  
- PC with PEAK PCAN-USB FD Pro monitors CAN messages.  
- Saleae Logic Analyzer validates low-level signals.  

     
---

##  Hardware Setup

### DB9 CAN Pinout

<p align="center">
  <img width="200" height="200" alt="Pin_out_gösterilmesi" src="https://github.com/user-attachments/assets/4872af62-2c96-49b5-8ef9-1dd641841882" />
</p>


*Standard DB9 pinout used by PEAK CAN adapters. Pin 2 = CAN Low, Pin 3 = CAN Ground, Pin 7 = CAN High.*

- Pin 2 → **CAN_L**  
- Pin 3 → **CAN_GND**  
- Pin 7 → **CAN_H**  

---

### Network Topology

<p align="center">
<img width="947" height="135" alt="PCAN_!20OHM" src="https://github.com/user-attachments/assets/44620f4c-60cf-485c-a9cf-4541f8ca3efc" />
</p>

*Typical CAN bus wiring: PC connected through PEAK PCAN-USB Pro, terminated with 120 Ω resistors on both ends.*

- 120 Ω termination resistors at both ends.  
- PC ↔ PCAN-USB ↔ TC375 boards (CAN_H, CAN_L, GND).  

---

### PEAK CAN USB FD Pro
<p align="center">
<img width="500" height="547" alt="Peak_Can_USB_fd_pro" src="https://github.com/user-attachments/assets/104e6a4a-a057-48b5-bb3c-e77961cc0751" />
</p>

*PEAK PCAN-USB FD Pro adapter used for monitoring and transmitting CAN messages at 500 kbit/s.*

---

### Saleae Logic Analyzer Pinout
<p align="center">
<img width="200" height="200" alt="Saleae_Pinout" src="https://github.com/user-attachments/assets/e689af6d-c52f-4074-88a1-f63e8e69cd41" />
</p>

*Saleae logic analyzer pinout for capturing CAN_H and CAN_L signals, verifying bit timing and frame integrity.*

---

### TC375 CAN Transceiver
<p align="center">
<img width="200" height="200" alt="Screenshot 2025-09-10 151535" src="https://github.com/user-attachments/assets/3b46231f-6e8e-4450-af17-13077bf2c9be" />
</p>
*On-board Infineon TLE9251V CAN transceiver used on the TC375 Lite Kit to interface with the CAN bus.*

---

## Code Explanation

The firmware consists of the following modules:

- **`bridge_common.h`**  
  Defines shared constants and data structures such as the `CanUdpFrame` format, static IP addresses, MAC addresses, netmask, and gateway.  
  Ensures consistency between CAN and UDP layers.

- **`can_hal.h`**  
  Header file for the CAN hardware abstraction layer. Declares initialization, transmit, and receive functions.

- **`can_hal_tc375.c`**  
  Implementation of CAN HAL specifically for the **AURIX TC375 Lite Kit**.  
  Configures the CAN module, transceiver pins, bit timing, filters, and message buffers.

- **`udp_bridge.c`**  
  Implementation of a lightweight wrapper around **lwIP UDP** functions.  
  Handles initialization of UDP sockets, sending frames, and receiving frames with callback support.

- **`udp_bridge.h`**  
  Header file for the UDP bridge. Declares APIs for initializing sender/receiver roles, sending frames, and registering callbacks.

- **`Cpu0_Main.c`**  
  Main application code executed on the AURIX TC375 Lite core.  
  - **Board A (CAN → UDP):** Initializes CAN, listens for CAN frames, and sends them over UDP.  
  - **Board B (UDP → CAN):** Initializes UDP receiver, listens for incoming UDP frames, and transmits them on CAN.  

*Test message ID `0x300h` is sent periodically with DLC=8 and data bytes `0x00`. An additional test frame `0x123h` with data `0xAA` is used for verification.*

---

##  Results

- **Logic Analyzer:** Confirmed periodic transmission of `0x300h` frames.  
- **PCAN-View:** Successfully received both `0x300h` (zero data) and `0x123h` (0xAA pattern) frames.  
- **Cycle Times:** 1 ms for test frame generation, stable reception over extended runtime.  
---
<p align="center">
<img width="1000" height="1000" alt="ilk_taraf" src="https://github.com/user-attachments/assets/339c04c9-bd8f-46d9-a70f-625df1e51938" />
*PCAN view CAN1 output*
</p>
---
<p align="center">
<img width="1000" height="1000" alt="2 kısım" src="https://github.com/user-attachments/assets/1f0b754e-74c3-4950-8fb7-c659b39bb72d" />
*PCAN view CAN2 output*
</p>
---
<p align="center">
<img width="1000" height="1000" alt="0x300logic" src="https://github.com/user-attachments/assets/d16f53f5-1762-435d-864e-5ec091749419" />
*Salae Logic Analyzer Output output*
</p>

---
##  References
( Infineon AURIX documentation, PEAK PCAN-USB manuals, lwIP reference)
