#ifndef CAN_HAL_H
#define CAN_HAL_H

#include <stdint.h>
#include <stdbool.h>

typedef struct {
    uint32_t id;
    uint8_t  ide;   // 0=standard, 1=extended
    uint8_t  rtr;   // 0=data, 1=remote
    uint8_t  dlc;   // 0..8
    uint8_t  data[8];
} CanFrame;

bool can_hal_init(uint32_t bitrate);
bool can_hal_receive(CanFrame *frame, uint32_t timeout_ms);
bool can_hal_transmit(const CanFrame *frame, uint32_t timeout_ms);

#endif