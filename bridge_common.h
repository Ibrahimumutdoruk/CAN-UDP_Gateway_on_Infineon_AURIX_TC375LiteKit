#ifndef BRIDGE_COMMON_H
#define BRIDGE_COMMON_H

#include <stdint.h>

#define BRIDGE_UDP_PORT     20000
#define KART_A_IP_ADDR     "192.168.10.10"
#define KART_B_IP_ADDR     "192.168.10.20"
#define BRIDGE_NETMASK     "255.255.255.0"
#define BRIDGE_GATEWAY     "192.168.10.1"

// Tasking compiler için pragma pack syntaxı
#pragma pack(1)
typedef struct {
    uint32_t id_be;      // Network byte order (big-endian) CAN ID
    uint8_t  ide;        // 0 = Standard (11-bit), 1 = Extended (29-bit)
    uint8_t  rtr;        // 0 = Data frame, 1 = Remote frame
    uint8_t  dlc;        // Data length (0..8)
    uint8_t  reserved;   // Padding
    uint8_t  data[8];    // CAN data bytes
} CanUdpFrame;
#pragma pack()

#endif
